import 'package:cropcheckpro/Data/bell-pepper.dart';
import 'package:cropcheckpro/Data/grapes.dart';
import 'package:cropcheckpro/Data/potato.dart';
import 'package:cropcheckpro/Data/strawberry.dart';
import 'package:cropcheckpro/Data/sugarcane.dart';
import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/plant.dart';
import 'Data/apple.dart';
import 'Data/corn.dart';

List<Plant> plants = [
  Plant(
      plantType: 'Outdoor',
      plantName: 'Apple Plant',
      image: 'assets/images/apple.png',
      subPlants: applePlants,
      modal: ModelConfig(
          modalPath: 'assets/model/apple-model.tflite',
          labelPath: 'assets/model/apple-labels.txt'),
      treatment: TreatmentData(description: "", points: [""]),
      metas: appleModelMetas),
  Plant(
      plantType: 'Outdoor',
      plantName: 'Corn Plant',
      image: 'assets/images/corn.png',
      subPlants: cornPlants,
      modal: ModelConfig(
          modalPath: 'assets/model/corn-model.tflite',
          labelPath: 'assets/model/corn-labels.txt'),
      treatment: TreatmentData(description: "", points: [""]),
    metas: cornModelMetas
  ),
  Plant(
      plantType: 'Outdoor',
      plantName: 'Bell Pepper Plant',
      image: 'assets/images/bellpepper-main.png',
      subPlants: bellPepperPlants,
      modal: ModelConfig(
          modalPath: 'assets/model/bellpepper-model.tflite',
          labelPath: 'assets/model/bellpepper-labels.txt'),
      treatment: TreatmentData(description: "", points: [""]),
      metas: bellPepperModelMetas),
  Plant(
      plantType: 'Outdoor',
      plantName: 'Sugarcane Plant',
      image: 'assets/images/sugarcane.png',
      subPlants: sugarcanePlants,
      modal: ModelConfig(
          modalPath: 'assets/model/sugarcane-model.tflite',
          labelPath: 'assets/model/sugarcane-labels.txt'),
      treatment: TreatmentData(description: "", points: [""]),
      metas: sugarcaneModelMetas),
  Plant(
      plantType: 'Outdoor',
      plantName: 'Grape Plant',
      image: 'assets/images/grape.png',
      subPlants: grapePlants,
      modal: ModelConfig(
          modalPath: 'assets/model/grape-model.tflite',
          labelPath: 'assets/model/grape-labels.txt'),
      treatment: TreatmentData(description: "", points: [""]),
      metas: grapeModelMetas),
  Plant(
      plantType: 'Outdoor',
      plantName: 'Potato Plant',
      image: 'assets/images/potato.png',
      subPlants: potatoPlants,
      modal: ModelConfig(
          modalPath: 'assets/model/potato-model.tflite',
          labelPath: 'assets/model/potato-labels.txt'),
      treatment: TreatmentData(description: "", points: [""]),
      metas: potatoModelMetas),
  Plant(
      plantType: 'Outdoor',
      plantName: 'Strawberry Plant',
      image: 'assets/images/strawberry.png',
      subPlants: strawberryPlants,
      modal: ModelConfig(
          modalPath: 'assets/model/strawberry-model.tflite',
          labelPath: 'assets/model/strawberry-labels.txt'),
      treatment: TreatmentData(description: "", points: [""]),
      metas: strawberryModelMetas),
];
