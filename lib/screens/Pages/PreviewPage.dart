import 'package:camera/camera.dart';
import 'package:cropcheckpro/screens/Pages/DetectionScreen.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../../models/ModelMetaData.dart';
import '../../models/plant.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture, required this.plant, required this.metas}) : super(key: key);

  final XFile picture;
  final Plant plant;
  final List<ModelMetaData> metas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Page')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
          const SizedBox(height: 24),
          Text(picture.name),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 35,
                  ),
                  splashRadius: 25,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetectionScreen(image: File(picture.path), plant: plant,metas: metas)));
                  },
                  icon: const Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 35,
                  ),
                  splashRadius: 25,
                ),
              ],
            ),
          )

        ]),
      ),
    );
  }
}