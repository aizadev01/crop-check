import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/ModelMetaData.dart';
import 'package:cropcheckpro/models/plant.dart';

List<ModelMetaData> sugarcaneModelMetas = [
  ModelMetaData(
    index: "0",
    name: 'Sugarcane Healthy Leaf',
    plant: sugarcanePlants[0],
  ),
  ModelMetaData(
    index: "1",
    name: 'Sugarcane Mosaic',
    plant: sugarcanePlants[1],
  ),
  ModelMetaData(
    index: "2",
    name: 'Sugarcane Red Rot',
    plant: sugarcanePlants[2],
  ),
  ModelMetaData(
    index: "3",
    name: 'Sugarcane Rust',
    plant: sugarcanePlants[3],
  ),
  ModelMetaData(
    index: "4",
    name: 'Sugarcane Yellow Leaf',
    plant: sugarcanePlants[4],
  ),
];

List<Plant> sugarcanePlants = [
  Plant(
      plantType: 'Sugar Cane',
      plantName: 'Sugarcane Healthy Leaf',
      image: 'assets/images/sugarcane-healthy.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
          TreatmentData(description: "A healthy sugarcane leaf is vibrant green, free from spots, discoloration, or damage, and exhibits a firm, turgid structure. Healthy leaves are crucial for photosynthesis, ensuring the plant's robust growth and high sugar yield. Maintaining healthy leaves is essential for maximizing the productivity and overall health of the sugarcane crop.",
              points: ["Location and Soil:Plant sugarcane in a sunny spot with well-drained, fertile soil.Ensure the soil has a pH between 6.0 and 7.5 for optimal growth.","Watering:Provide consistent moisture, especially during the growing season.Use drip irrigation or furrow irrigation to avoid waterlogging and reduce the risk of fungal diseases.","Fertilization:Apply a balanced fertilizer or organic compost to supply essential nutrients.Follow soil test recommendations to provide the right nutrients at the correct times.","Mulching:Apply a layer of organic mulch around the base of the plants to retain moisture, suppress weeds, and regulate soil temperature.Mulch also adds nutrients to the soil as it decomposes.","Pruning and Debris Removal:Remove any dead or damaged leaves to promote airflow and reduce disease risk.Keep the field clean by removing any plant debris promptly.","Pest and Disease Management:Monitor plants regularly for pests such as borers, aphids, and mites.Use integrated pest management (IPM) strategies, including biological controls and organic or chemical treatments as needed.","Support and Spacing:Ensure adequate spacing between sugarcane plants to promote good air circulation.Proper spacing helps prevent diseases and allows for easier management practices.","Monitoring and Maintenance:Regularly check for signs of nutrient deficiencies or diseases, such as yellowing or spotting on the leaves.Address any issues promptly with appropriate treatments or adjustments to care routines.",])),
  Plant(
      plantType: 'Sugar Cane',
      plantName: 'Sugarcane Mosaic',
      image: 'assets/images/sugarcane-mosaic.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
          TreatmentData(description: "Sugarcane mosaic disease, caused by the Sugarcane mosaic virus (SCMV), is characterized by mottled or mosaic patterns on the leaves, including streaks or patches of light and dark green. Infected plants may show stunted growth, reduced vigor, and lower sugar content. The disease is primarily spread by aphids and can significantly impact the yield and quality of the sugarcane crop. Effective management practices are essential to minimize the disease's impact.",
              points: ["Resistant Varieties:sugarcane varieties that are resistant or tolerant to Sugarcane mosaic virus.Using resistant varieties is one of the most effective ways to manage the disease.","Rogueing:Regularly inspect fields and remove infected plants to prevent the spread of the virus.Dispose of infected plants away from the field to avoid reinfection.","Aphid Control:Monitor and control aphid populations, as they are primary vectors of the virus.Use insecticides, natural predators, or neem oil to manage aphids effectively.","Sanitation:Keep the field clean and free of plant debris that could harbor the virus.Remove and destroy any volunteer sugarcane plants that may be sources of infection.","Crop Rotation:Practice crop rotation to break the disease cycle.Avoid planting sugarcane in the same field consecutively to reduce disease pressure.","Cultural Practices:Maintain good field hygiene and avoid using contaminated tools or equipment.Ensure proper spacing and adequate airflow to reduce humidity and disease incidence.","Monitoring:Regularly inspect sugarcane plants for signs of mosaic symptoms, especially during periods of high aphid activity.Early detection allows for prompt intervention and better disease management.","Professional Consultation:In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional agronomists.They can provide tailored recommendations and assistance in managing sugarcane mosaic disease effectively.",])),
  Plant(
      plantType: 'Sugar Cane',
      plantName: 'Sugarcane Red Rot',
      image: 'assets/images/sugarcane-red-rot.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
      TreatmentData(description: "Sugarcane red rot, caused by the fungus Colletotrichum falcatum, is a serious disease that affects sugarcane, characterized by reddening and drying of the inner stalk tissue. Symptoms include red lesions with white patches inside the stalk, wilting, and a sour smell. The disease can significantly reduce yield and sugar quality, making effective management crucial.",
points: ["Resistant Varieties:Plant sugarcane varieties that are resistant or tolerant to red rot.Using resistant varieties is one of the most effective strategies to manage the disease.","Rogueing:Regularly inspect fields and remove infected plants to prevent the spread of the fungus.Dispose of infected plants away from the field to avoid reinfection.","Crop Rotation:Practice crop rotation with non-host crops to break the disease cycle.Avoid planting sugarcane in the same field consecutively to reduce disease pressure.","Sanitation:Keep the field clean and free of plant debris that could harbor the fungus.Remove and destroy any volunteer sugarcane plants that may be sources of infection.","Water Management:Ensure proper drainage in fields to prevent waterlogging, which can promote fungal growth.Avoid over-irrigation and ensure consistent moisture levels.","Chemical Control:Apply fungicides as a preventive measure according to the manufacturer's instructions.Use fungicides during critical periods, such as before the rainy season, to reduce the risk of infection.","Cultural Practices:Use disease-free seed cane for planting to prevent initial infection.Implement proper field hygiene, including cleaning tools and equipment to avoid spreading the fungus.","Monitoring:Regularly inspect sugarcane plants for signs of red rot, especially during the growing season.Early detection allows for prompt intervention and better disease management.",])),
  Plant(
      plantType: 'Sugar Cane',
      plantName: 'Sugarcane Rust',
      image: 'assets/images/sugarcane-rust.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
      TreatmentData(description: "Sugarcane rust disease, primarily caused by the fungi Puccinia melanocephala (common rust) and Puccinia kuehnii (orange rust), manifests as reddish-brown or orange pustules on the leaves. These pustules release spores that can spread rapidly, especially in warm, humid conditions. The disease can cause significant yield losses by reducing photosynthetic capacity, leading to stunted growth and lower sugar content.",
points: ["Resistant Varieties:Plant sugarcane varieties that are resistant or tolerant to rust diseases.Using resistant varieties is one of the most effective ways to manage rust disease.","Sanitation:Keep the field clean and free of plant debris that could harbor the rust fungi.Remove and destroy any infected plant material promptly to prevent spore dispersal.","Crop Rotation:Practice crop rotation with non-host crops to break the disease cycle.Avoid planting sugarcane in the same field consecutively to reduce disease pressure.","Cultural Practices:Ensure proper spacing between plants to improve airflow and reduce humidity levels.Avoid overhead irrigation, which can promote fungal growth and spore dispersal.","Chemical Control:Apply fungicides labeled for rust control according to the manufacturer's instructions.Begin fungicide applications preventatively, especially during periods of high humidity and warmth, and continue at regular intervals throughout the growing season.","Monitoring:Regularly inspect sugarcane plants for signs of rust, particularly during periods of warm, humid weather.Early detection allows for prompt intervention and better disease management.","Proper Nutrition:Ensure plants receive adequate nutrition to maintain strong, healthy growth.A well-fertilized plant is more resilient to disease and can better withstand infections.","Professional Consultation:In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional agronomists.They can provide tailored recommendations and assistance in managing sugarcane rust disease effectively.",])),
  Plant(
      plantType: 'Sugar Cane',
      plantName: 'Sugarcane Yellow Leaf',
      image: 'assets/images/yellow.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
      TreatmentData(description: "Sugarcane yellow leaf disease (YLD) is caused by the Sugarcane yellow leaf virus (SCYLV). This disease is characterized by yellowing of the midrib on the underside of mature leaves, which can progress to generalized leaf yellowing. Infected plants often exhibit stunted growth, reduced vigor, and lower sugar content. The disease is primarily spread by aphids and can significantly impact yield and quality, making effective management essential.",
points: ["Resistant Varieties:Plant sugarcane varieties that are resistant or tolerant to yellow leaf disease.Using resistant varieties is one of the most effective strategies to manage the disease.","Rogueing:Regularly inspect fields and remove infected plants to prevent the spread of the virus.Dispose of infected plants away from the field to avoid reinfection.","Aphid Control:Monitor and control aphid populations, as they are primary vectors of the virus.Use insecticides, natural predators, or neem oil to manage aphids effectively.","Sanitation:Keep the field clean and free of plant debris that could harbor the virus.Remove and destroy any volunteer sugarcane plants that may be sources of infection.","Crop Rotation:Practice crop rotation with non-host crops to break the disease cycle.Avoid planting sugarcane in the same field consecutively to reduce disease pressure.","Cultural Practices:Maintain good field hygiene and avoid using contaminated tools or equipment.Ensure proper spacing and adequate airflow to reduce humidity and disease incidence.","Monitoring:Regularly inspect sugarcane plants for signs of yellow leaf disease, especially during periods of high aphid activity.Early detection allows for prompt intervention and better disease management.","Professional Consultation:In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional agronomists.They can provide tailored recommendations and assistance in managing sugarcane yellow leaf disease effectively.",])),
];
