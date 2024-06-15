

import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/ModelMetaData.dart';
import 'package:cropcheckpro/models/plant.dart';

List<ModelMetaData> potatoModelMetas = [
  ModelMetaData(
    index: "0",
    name: 'Healthy Potato',
    plant: potatoPlants[0],
  ),
  ModelMetaData(
    index: "1",
    name: 'Potato Early Blight',
    plant: potatoPlants[1],
  ),
  ModelMetaData(
    index: "2",
    name: 'Potato Late Blight',
    plant: potatoPlants[2],
  )
];

List<Plant> potatoPlants = [
  Plant(
      plantType: 'Potato',
      plantName: 'Healthy Potato',
      image: 'assets/images/potato-healthy.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
          TreatmentData(description: "A healthy potato plant exhibits lush, green foliage free of spots, discoloration, or damage. The plant is vigorous with strong stems and an extensive root system. Healthy potato plants produce high yields of well-formed, disease-free tubers. Proper care and maintenance are crucial to ensure the plant's health and productivity.",
              points: ["Location and Soil:Plant potatoes in a sunny spot with well-drained, fertile soil.Ensure the soil is slightly acidic to neutral (pH 5.0-7.0) for optimal growth.Use raised beds or hills to improve drainage and reduce the risk of disease.","Watering:Provide consistent moisture, especially during the tuber formation stage.Water at the base of the plant to avoid wetting the foliage, which can lead to fungal diseases.Use drip irrigation or soaker hoses to ensure deep watering and reduce water wastage.","Fertilization:Apply a balanced fertilizer or compost to supply essential nutrients.Follow soil test recommendations to provide the right nutrients at the correct times.Avoid excessive nitrogen, which can promote foliage growth at the expense of tuber development.","Mulching:Apply a layer of organic mulch around the base of the plants to retain moisture, suppress weeds, and regulate soil temperature.Mulch also adds nutrients to the soil as it decomposes and protects tubers from sunlight exposure, which can cause greening.","Hilling:Regularly hill soil around the base of the plants to cover tubers and encourage deeper rooting.Hilling also helps prevent tuber greening and protects against pests.","Pest and Disease Management:Monitor plants regularly for pests such as Colorado potato beetles, aphids, and wireworms.Use integrated pest management (IPM) strategies, including biological controls, organic treatments, or appropriate pesticides.Rotate crops to prevent soil-borne diseases and pests from building up in the soil.","Pruning and Debris Removal:Remove any yellowing or damaged leaves to promote airflow and reduce the risk of disease.Keep the garden clean by removing plant debris and weeds promptly.","Monitoring:Regularly check for signs of nutrient deficiencies, such as yellowing or stunted growth.Inspect plants for early signs of disease, such as blight or blackleg, and take prompt action if needed.Maintain a consistent care routine to ensure the plants receive adequate nutrients, water, and protection from pests and diseases.",])),
  Plant(
      plantType: 'Potato',
      plantName: 'Potato Early Blight',
      image: 'assets/images/potato-early-blight.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
      TreatmentData(description: "Potato early blight disease, caused by the fungus Alternaria solani, manifests as dark brown to black spots on the leaves, often with concentric rings creating a target appearance.It usually starts on the lower, older leaves and progresses upward. Severely infected leaves may yellow and die, leading to reduced photosynthetic capacity and yield.The disease can also affect stems and tubers, causing dry, dark lesions. Effective management is essential to minimize yield losses and maintain plant health.",
points: ["Resistant Varieties:Plant potato varieties that are resistant or tolerant to early blight.Using resistant varieties is one of the most effective strategies to manage the disease.","Crop Rotation:Practice crop rotation with non-host crops to break the disease cycle.Avoid planting potatoes or related crops in the same field consecutively to reduce disease pressure.","Sanitation:Keep the field clean and free of plant debris that could harbor the fungus.Remove and destroy any infected plant material promptly to prevent spore dispersal.","Water Management:Avoid overhead irrigation to reduce leaf wetness and the spread of fungal spores.Water at the base of the plants and use drip irrigation or soaker hoses to keep foliage dry.","Fungicides:Apply fungicides labeled for early blight control according to the manufacturer's instructions.Begin fungicide applications preventatively, especially during periods of high humidity and warmth, and continue at regular intervals throughout the growing season.","Cultural Practices:Ensure proper spacing between plants to improve airflow and reduce humidity levels.Hill soil around the base of the plants to cover tubers and encourage deeper rooting, which can help reduce disease pressure.","Nutrient Management:Maintain adequate nutrition to promote strong, healthy plants.Avoid excessive nitrogen, which can promote lush foliage more susceptible to early blight.","Monitoring:Regularly inspect potato plants for signs of early blight, particularly during warm, humid weather.Early detection allows for prompt intervention and better disease management.",])),
  Plant(
      plantType: 'Potato',
      plantName: 'Potato Late Blight',
      image: 'assets/images/late-blight-potato.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
      TreatmentData(description: "Potato late blight disease, caused by the oomycete Phytophthora infestans, is one of the most devastating diseases affecting potato crops. It manifests as water-soaked lesions on leaves, which quickly turn dark brown to black, often with a pale green border. Under humid conditions, white fungal growth can appear on the undersides of leaves. The disease can also infect stems and tubers, leading to rot. Late blight spreads rapidly, especially in cool, wet weather, and can cause significant yield losses if not managed effectively.",
points: ["Resistant Varieties:Plant potato varieties that are resistant or tolerant to late blight.Using resistant varieties is one of the most effective strategies to manage the disease.","Crop Rotation:Practice crop rotation with non-host crops to break the disease cycle.Avoid planting potatoes or related crops in the same field consecutively to reduce disease pressure.","Sanitation:Keep the field clean and free of plant debris that could harbor the pathogen.Remove and destroy any infected plant material promptly to prevent spore dispersal.Ensure proper disposal of cull piles and volunteer potatoes, which can be sources of infection.","Water Management:Avoid overhead irrigation to reduce leaf wetness and the spread of spores.Water at the base of the plants and use drip irrigation or soaker hoses to keep foliage dry.Ensure proper field drainage to prevent waterlogging, which can exacerbate the disease.","Fungicides:Apply fungicides labeled for late blight control according to the manufacturer's instructions.Begin fungicide applications preventatively, especially during periods of cool, wet weather, and continue at regular intervals throughout the growing season.Rotate fungicides with different modes of action to prevent resistance development.","Cultural Practices:Ensure proper spacing between plants to improve airflow and reduce humidity levels.Hill soil around the base of the plants to cover tubers and prevent exposure to spores.Mulch to prevent soil from splashing onto the leaves, which can introduce pathogens.","Nutrient Management:Maintain adequate nutrition to promote strong, healthy plants.Avoid excessive nitrogen, which can promote lush foliage more susceptible to late blight.","Monitoring:Regularly inspect potato plants for signs of late blight, especially during cool, wet weather.Early detection allows for prompt intervention and better disease management.Use disease forecasting tools to predict outbreaks and time fungicide applications more effectively.",])),
];
