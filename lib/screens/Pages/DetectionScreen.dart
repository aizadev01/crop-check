import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/ModelMetaData.dart';
import 'package:cropcheckpro/models/plant.dart';
import 'package:cropcheckpro/screens/Pages/DetailScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tflite/flutter_tflite.dart';


class DetectionScreen extends StatefulWidget {
  final File image;
  final Plant plant;
  final List<ModelMetaData> metas;

  const DetectionScreen(
      {required this.image,
      required this.plant,
      required this.metas,
      super.key});

  @override
  State<DetectionScreen> createState() => _DetectionScreenState();
}

class _DetectionScreenState extends State<DetectionScreen> {
  dynamic result;
  List<dynamic> possibleResults = [];
  int? indexDisease;
  int diseaseValue = 0;
  bool showResultSheet = false;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  ModelMetaData modelMeta = ModelMetaData(
      index: "",
      name: "",
      plant: Plant(
          plantType: "",
          plantName: "",
          image: "",
          modal: ModelConfig(modalPath: '', labelPath: ''),
          subPlants: [],
          treatment: TreatmentData(description: '', points: [])));

  saveInDb(File file, String model, String detectedLabel ) async {
    String fileName = 'result_files/${_auth.currentUser?.email}_${DateTime.now()}.jpg';
    Uint8List fileBytes = await file.readAsBytes();
    Reference ref =  _storage.ref().child(fileName);
    TaskSnapshot task = await ref.putData(fileBytes);
    String downloadUrl = await task.ref.getDownloadURL();
    print('image_download_url: ${downloadUrl}');
    await FirebaseFirestore.instance
        .collection('recent_results')
        .add({'image_url': downloadUrl, "model": model, "detectedDisease":detectedLabel, "userEmail": _auth.currentUser?.email, 'createdAt': FieldValue.serverTimestamp() });


  }

  doImageClassification() async {
    var recognitions = await Tflite.runModelOnImage(
      path: widget.image.path,
      imageMean: 0.0,
      imageStd: 255.0,
      numResults: 10,
      threshold: 0.5,
      asynch: true,
    );
    if (recognitions != null) {
      print(widget.image.path);
      print('recog ${recognitions}');

      double highestConfidence = 0.0;
      dynamic highestResult;
      recognitions!.forEach((element) {
        print('Diease $element');
        double confidence = element['confidence'];
        print('Diease Index: $confidence');
        if (confidence > highestConfidence) {
          highestConfidence = confidence;
          highestResult = element;
        }
        setState(() {
          possibleResults.add(element);
        });
      });
      print('Diease Index: $indexDisease');

      print('Highest value: $highestResult');

      ModelMetaData detection = widget.metas
          .where(
              (element) => element.index == highestResult['index'].toString())
          .first;
      print("Detection $detection");

      await saveInDb(widget.image,widget.plant.modal.modalPath,detection.name);


      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => DetailScreen(
                title: "${detection.name} Detected!",
                description: detection.plant.treatment.description,
                image: detection.plant.image,
                points: detection.plant.treatment.points)),
      );
    }



    // if (highestResult != null) {
    //
    //
    //   setState(() {
    //     result = highestResult;
    //     indexDisease = result['index'];
    //     double value = result['confidence'] * 100;
    //     diseaseValue = value.round();
    //   });
    //
    //   print('highestResult $highestResult');
  }

  loadDataModelFiles() async {
    try {
      await Tflite.loadModel(
        model: widget.plant.modal.modalPath,
        labels: widget.plant.modal.labelPath,
        numThreads: 1,
        isAsset: true,
        useGpuDelegate: false,
      ).then((value) => doImageClassification());
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadDataModelFiles();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFC1DFCB),
      body: SafeArea(
          child: Center(
        child: Text(
          "Detecting...",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      )),
    );
  }
}
