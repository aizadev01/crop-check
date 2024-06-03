import 'package:cropcheckpro/models/ModelMetaData.dart';

import 'ModelConfig.dart';

class Plant {
  final String plantType;
  final String plantName;
  final String image;
  final List<Plant> subPlants;
  final ModelConfig modal;
  final TreatmentData treatment;
   List<ModelMetaData>? metas;

  Plant(  {
    required this.plantType,
    required this.plantName,
    required this.image,
    required this.subPlants,
    required this.modal,
    required this.treatment,
    this.metas,
  } );
}

class TreatmentData  {
  final String description;
  final List<String> points;
  TreatmentData({ required this.description, required this.points} );
}
