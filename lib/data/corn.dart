import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/plant.dart';

import '../models/ModelMetaData.dart';

List<ModelMetaData> cornModelMetas = [
  ModelMetaData(
    index: "0",
    name: 'Healthy Corn Leaf',
    plant: cornPlants[0],
  ),
  ModelMetaData(
    index: "1",
    name: 'Corn Common Rust Leaf',
    plant: cornPlants[1],
  ),
  ModelMetaData(
    index: "2",
    name: 'Corn Gray Leaf Spot',
    plant: cornPlants[2],
  ),
  ModelMetaData(
    index: "3",
    name: 'Corn Northern Leaf Blight',
    plant: cornPlants[3],
  ),
];

List<Plant> cornPlants = [
  Plant(
      plantType: 'Corn',
      plantName: 'Healthy Corn Leaf',
      image: 'assets/images/corn-healthy.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(description: "A healthy corn leaf is characterized by its vibrant green color, free from spots, discoloration, or damage. The leaves should be upright and turgid, indicating proper hydration and nutrition. Healthy leaves are crucial for photosynthesis, ensuring robust plant growth and high grain yield. Proper care and maintenance are essential to keep corn leaves healthy throughout the growing season.",
          points: ["Location and Soil:Plant corn in a sunny location with well-drained, fertile soil.
          Ensure the soil pH is between 6.0 and 6.8 for optimal growth.
          Conduct soil tests and amend the soil with organic matter or compost to improve fertility and structure.","Watering:

          Provide consistent moisture, especially during the critical growth stages of tasseling, silking, and kernel filling.
          Water deeply to ensure the root zone is adequately moistened but avoid waterlogging.
          Use drip irrigation or soaker hoses to minimize water wastage and reduce the risk of fungal diseases.","Fertilization:

          Apply a balanced fertilizer or organic compost to supply essential nutrients such as nitrogen, phosphorus, and potassium.
          Follow soil test recommendations to provide the right nutrients at the correct times.
          Side-dress with nitrogen fertilizer when the plants are knee-high and again at the tasseling stage.
          ","Mulching:

          Apply a layer of organic mulch around the base of the plants to retain moisture, suppress weeds, and regulate soil temperature.
          Mulch also adds nutrients to the soil as it decomposes, enhancing soil fertility.
          ","Pest and Disease Management:

          Monitor plants regularly for pests such as corn borers, aphids, and cutworms.
          Use integrated pest management (IPM) strategies, including biological controls, organic treatments, or appropriate pesticides.
  Rotate crops to prevent soil-borne diseases and pests from building up in the soil.","Proper Spacing:

  Space plants adequately to ensure good air circulation and reduce the risk of fungal diseases.
  Proper spacing also allows each plant to receive sufficient sunlight and nutrients.","Pruning and Debris Removal:

  Remove any yellowing or damaged leaves to promote airflow and reduce the risk of disease.
  Keep the field clean by removing plant debris and weeds promptly.
  ","Monitoring:

  Regularly inspect corn plants for signs of nutrient deficiencies, pests, or diseases.
  Address any issues promptly with appropriate treatments or adjustments to care routines.
  Maintain a consistent care routine to ensure the plants receive adequate nutrients, water, and protection from pests and diseases.",])),
  Plant(
      plantType: 'Corn',
      plantName: 'Corn Common Rust Leaf',
      image: 'assets/images/corn-common-rust.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(description: "Corn common rust, caused by the fungus Puccinia sorghi, appears as small, reddish-brown pustules on both the upper and lower surfaces of the leaves. As the disease progresses, the pustules may turn dark brown to black. Severely infected leaves can yellow, wither, and die, reducing the plant's ability to photosynthesize and leading to lower yields. Effective management is crucial to minimize yield losses and maintain plant health.",
          points: ["Resistant Varieties:Plant corn varieties that are resistant or tolerant to common rust.
Using resistant varieties is one of the most effective strategies to manage the disease.","Crop Rotation:

Practice crop rotation with non-host crops to break the disease cycle.
Avoid planting corn in the same field consecutively to reduce disease pressure.","Sanitation:

Keep the field clean and free of plant debris that could harbor the fungus.
Remove and destroy any infected plant material promptly to prevent spore dispersal.
Ensure proper disposal of cull piles and volunteer plants, which can be sources of infection.","Water Management:

Avoid overhead irrigation to reduce leaf wetness and the spread of fungal spores.
Water at the base of the plants and use drip irrigation or soaker hoses to keep foliage dry.
Ensure proper field drainage to prevent waterlogging, which can exacerbate the disease.
","Fungicides:

Apply fungicides labeled for common rust control according to the manufacturer's instructions.
Begin fungicide applications preventatively, especially during periods of high humidity and warmth, and continue at regular intervals throughout the growing season.
Rotate fungicides with different modes of action to prevent resistance development.","Cultural Practices:

Ensure proper spacing between plants to improve airflow and reduce humidity levels.
Mulch to prevent soil from splashing onto the leaves, which can introduce pathogens.
Practice good field hygiene, including cleaning tools and equipment to avoid spreading the fungus.","Nutrient Management:

Maintain adequate nutrition to promote strong, healthy plants.
Avoid excessive nitrogen, which can promote lush foliage more susceptible to common rust.
Use balanced fertilizers based on soil test recommendations to provide essential nutrients.
","Monitoring:

Regularly inspect corn plants for signs of common rust, especially during periods of warm, humid weather.
Early detection allows for prompt intervention and better disease management.
Use disease forecasting tools to predict outbreaks and time fungicide applications more effectively.",])),
  Plant(
      plantType: 'Corn',
      plantName: 'Corn Gray Leaf Spot',
      image: 'assets/images/corn-gray-leaf-spot.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(description: "Corn gray leaf spot, caused by the fungus Cercospora zeae-maydis, manifests as small, rectangular lesions on corn leaves, initially gray-green and later turning tan or brown with a dark border. The lesions may coalesce, leading to extensive leaf damage and reduced photosynthetic capacity. Severe infections can result in premature leaf senescence, reduced grain fill, and yield losses. Effective management is essential to minimize the impact of gray leaf spot on corn crops.",
points: ["Resistant Varieties:

Plant corn varieties that are resistant or tolerant to gray leaf spot.
Using resistant varieties is one of the most effective strategies to manage the disease.
","Crop Rotation:

Practice crop rotation with non-host crops to break the disease cycle.
Avoid planting corn in the same field consecutively to reduce disease pressure.","Sanitation:

Keep the field clean and free of plant debris that could harbor the fungus.
Remove and destroy any infected plant material promptly to prevent spore dispersal.
Ensure proper disposal of cull piles and volunteer plants, which can be sources of infection.","Water Management:

Avoid overhead irrigation to reduce leaf wetness and the spread of fungal spores.
Water at the base of the plants and use drip irrigation or soaker hoses to keep foliage dry.
Ensure proper field drainage to prevent waterlogging, which can exacerbate the disease.","Fungicides:

Apply fungicides labeled for gray leaf spot control according to the manufacturer's instructions.
Begin fungicide applications preventatively, especially during periods of high humidity and warmth, and continue at regular intervals throughout the growing season.
Rotate fungicides with different modes of action to prevent resistance development.","Cultural Practices:

Ensure proper spacing between plants to improve airflow and reduce humidity levels.
Mulch to prevent soil from splashing onto the leaves, which can introduce pathogens.
Practice good field hygiene, including cleaning tools and equipment to avoid spreading the fungus.
","Nutrient Management:

Maintain adequate nutrition to promote strong, healthy plants.
Avoid excessive nitrogen, which can promote lush foliage more susceptible to gray leaf spot.
Use balanced fertilizers based on soil test recommendations to provide essential nutrients.
","Monitoring:

Regularly inspect corn plants for signs of gray leaf spot, especially during periods of warm, humid weather.
Early detection allows for prompt intervention and better disease management.
Use disease forecasting tools to predict outbreaks and time fungicide applications more effectively.",])),
  Plant(
      plantType: 'Corn',
      plantName: 'Corn Northern Leaf Blight',
      image: 'assets/images/corn-gray-leaf-spot.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(description: "Corn northern leaf blight, caused by the fungus Exserohilum turcicum, appears as elongated, cigar-shaped lesions on corn leaves, initially gray-green and later turning tan or brown with a wavy edge. The lesions may expand and coalesce, leading to extensive leaf damage and reduced photosynthetic capacity. Severe infections can result in premature leaf senescence, reduced grain fill, and yield losses. Effective management is crucial to minimize the impact of northern leaf blight on corn crops.",
points: ["Resistant Varieties:

Plant corn varieties that are resistant or tolerant to northern leaf blight.
Using resistant varieties is one of the most effective strategies to manage the disease.
","Crop Rotation:

Practice crop rotation with non-host crops to break the disease cycle.
Avoid planting corn in the same field consecutively to reduce disease pressure.
","Sanitation:

Keep the field clean and free of plant debris that could harbor the fungus.
Remove and destroy any infected plant material promptly to prevent spore dispersal.
Ensure proper disposal of cull piles and volunteer plants, which can be sources of infection.
","Water Management:

Avoid overhead irrigation to reduce leaf wetness and the spread of fungal spores.
Water at the base of the plants and use drip irrigation or soaker hoses to keep foliage dry.
Ensure proper field drainage to prevent waterlogging, which can exacerbate the disease.
","Fungicides:

Apply fungicides labeled for northern leaf blight control according to the manufacturer's instructions.
Begin fungicide applications preventatively, especially during periods of high humidity and warmth, and continue at regular intervals throughout the growing season.
Rotate fungicides with different modes of action to prevent resistance development.","Cultural Practices:

Ensure proper spacing between plants to improve airflow and reduce humidity levels.
Mulch to prevent soil from splashing onto the leaves, which can introduce pathogens.
Practice good field hygiene, including cleaning tools and equipment to avoid spreading the fungus.
","Nutrient Management:

Maintain adequate nutrition to promote strong, healthy plants.
Avoid excessive nitrogen, which can promote lush foliage more susceptible to northern leaf blight.
Use balanced fertilizers based on soil test recommendations to provide essential nutrients.
","Monitoring:

Regularly inspect corn plants for signs of northern leaf blight, especially during periods of warm, humid weather.
Early detection allows for prompt intervention and better disease management.
Use disease forecasting tools to predict outbreaks and time fungicide applications more effectively.",])),

];
