

import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/ModelMetaData.dart';
import 'package:cropcheckpro/models/plant.dart';

List<ModelMetaData> grapeModelMetas = [
  ModelMetaData(
    index: "0",
    name: 'Grape Healthy Leaf',
    plant: grapePlants[0],
  ),
  ModelMetaData(
    index: "1",
    name: 'Grape Black Rot',
    plant: grapePlants[1],
  ),
  ModelMetaData(
    index: "2",
    name: 'Grape Esca (Black Measles)',
    plant: grapePlants[2],
  ),
  ModelMetaData(
    index: "3",
    name: 'Grape Leaf Blight',
    plant: grapePlants[3],
  ),
];
List<Plant> grapePlants = [
  Plant(
      plantType: 'Grape',
      plantName: 'Grape Healthy Leaf',
      image: 'assets/images/grape-healthy.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description: "A healthy grape leaf is characterized by its vibrant green color, smooth surface, and absence of discoloration, spots, or damage. Healthy grape leaves are crucial for photosynthesis, nutrient uptake, and overall plant vigor. They should be free from pests, diseases, and environmental stressors, ensuring optimal growth and grape production.",
          points: ["Site Selection:Choose a site with well-drained soil, adequate sunlight, and good air circulation for optimal grape growth.Avoid planting in low-lying areas prone to waterlogging or areas with heavy clay soils that can cause root suffocation.","Soil Preparation:Conduct soil tests to determine pH and nutrient levels.Amend the soil as needed to achieve the ideal pH range for grapes (typically 6.0-6.5) and provide essential nutrients.Incorporate organic matter such as compost to improve soil structure and fertility.","Watering:Provide consistent moisture, especially during the growing season and dry periods.Use drip irrigation or soaker hoses to water directly at the base of the vines, avoiding wetting the foliage.Avoid overwatering, as excessive moisture can lead to fungal diseases and root rot.","Pruning and Training:Prune grapevines regularly to maintain an open canopy, promote airflow, and reduce disease pressure.Train vines using appropriate trellising systems to support growth and fruit production.Remove any dead or diseased wood during pruning to prevent the spread of pathogens.","Nutrient Management:Apply balanced fertilizers based on soil test recommendations to provide essential nutrients like nitrogen, phosphorus, and potassium.Avoid over-fertilization, as excessive nitrogen can promote excessive vegetative growth at the expense of fruit production.","Pest and Disease Monitoring:Regularly inspect grapevines for signs of pests such as aphids, mites, and leafhoppers.Use integrated pest management (IPM) techniques, including cultural controls, biological controls, and targeted pesticide applications when necessary.Monitor for common grape diseases like powdery mildew, downy mildew, and black rot, and take preventive measures such as fungicide applications based on disease risk assessments.","Weed Control:Keep the area around grapevines free from weeds that can compete for nutrients and water.Mulch around the base of the vines to suppress weeds, retain soil moisture, and maintain a stable root environment.","Monitoring and Care:Regularly monitor grapevines for overall health, growth patterns, and any signs of stress or disease.Address any issues promptly through appropriate cultural practices, treatments, or consultations with local extension services or viticulture experts.",])),
  Plant(
      plantType: 'Grape',
      plantName: 'Grape Black Rot',
      image: 'assets/images/grape-black-rot.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description: "Grape black rot, caused by the fungus Guignardia bidwellii, is a common and destructive disease affecting grapevines. It manifests as small, dark lesions on leaves, which enlarge and develop concentric rings, eventually causing leaf withering and death. Infected fruit shows dark, sunken lesions with spore-producing structures (acervuli). Black rot can lead to significant yield losses and reduce fruit quality if not managed effectively.",
points: ["Resistant Varieties:Plant grape varieties that are resistant or tolerant to black rot.Using resistant varieties is one of the most effective strategies to manage the disease.","Site Selection and Air Circulation:Choose a site with good air circulation and sunlight exposure to promote leaf drying and reduce humidity.Avoid planting in areas prone to waterlogging or where moisture tends to accumulate.","Pruning and Canopy Management:Prune grapevines regularly to maintain an open canopy, improve airflow, and reduce humidity levels.Remove and destroy infected plant material during pruning to prevent the spread of spores.Train vines using appropriate trellising systems to space and support growth.","Fungicides:Apply fungicides labeled for black rot control according to the manufacturer's instructions.Begin fungicide applications preventatively, especially during critical disease periods such as bloom and fruit development stages.Rotate fungicides with different modes of action to prevent resistance development.","Sanitation:Keep the vineyard clean and free of debris that could harbor the fungus.Remove and destroy any infected fruit clusters, leaves, or canes promptly to reduce inoculum levels.Prune vines to improve light penetration and reduce humidity within the canopy.","Water Management:Water grapevines at the base to avoid wetting the foliage, which can promote fungal growth.Use drip irrigation or soaker hoses to deliver water directly to the root zone and minimize leaf wetness.","Cultural Practices:Space grapevines adequately to promote airflow and reduce humidity in the canopy.Avoid excessive nitrogen fertilization, as it can promote lush growth more susceptible to disease.Mulch around the base of vines to suppress weeds and maintain a stable root environment.","Monitoring and Early Detection:Regularly monitor grapevines for signs of black rot, especially during humid and wet weather.Scout for characteristic lesions on leaves and fruit, and take prompt action if symptoms are observed.Use weather-based disease forecasting models to time fungicide applications more effectively.",])),
  Plant(
      plantType: 'Grape',
      plantName: 'Grape Esca (Black Measles)',
      image: 'assets/images/grape-esca.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description: "Grape Esca, also known as Black Measles, is a complex disease syndrome affecting grapevines. It is caused by multiple factors, including fungi such as Phaeomoniella chlamydospora and Phaeoacremonium spp., as well as environmental stressors. Symptoms of Esca include leaf discoloration (chlorosis), yellow or reddish-brown necrotic spots, and black streaking in the vascular tissues. The disease can lead to vine decline, reduced yield, and eventual death of affected vines.", points: ["Cultural Practices:Plant certified disease-free grapevines from reputable nurseries to reduce the risk of introducing pathogens.Maintain vineyard hygiene by removing and destroying infected wood, pruning debris, and dead canes promptly.","Pruning Techniques:Practice careful pruning to minimize wounds and avoid creating entry points for pathogens.Disinfect pruning tools between cuts and between vines to prevent spreading pathogens.","Varietal Selection:Consider planting grape varieties known to be less susceptible to Esca or that have shown tolerance to the disease.Consult with local agricultural extension services or viticulture experts for recommendations on resistant/tolerant varieties.","Fungicides and Protectants:Apply fungicides labeled for Esca control, focusing on protectant treatments during critical periods such as pruning wounds and bud break.Use fungicides with different modes of action to prevent resistance development.","Vineyard Management:Optimize vineyard practices to reduce stress on grapevines, such as maintaining proper soil moisture, nutrition, and canopy management.Avoid excessive nitrogen fertilization, as it can contribute to vine stress and susceptibility to disease.","Monitoring and Early Detection:Regularly scout vineyards for symptoms of Esca, including leaf discoloration, necrotic spots, and black streaking in the wood.Implement early detection methods such as trunk and cane inspections to identify infected vines early.","Soil and Root Health:Maintain soil health through proper drainage, soil pH management, and organic matter incorporation to support vine vigor and resilience.Monitor and manage root health, as healthy roots contribute to overall vine resilience against diseases.","Integrated Pest Management (IPM):Implement an IPM approach that combines cultural, biological, and chemical control methods to manage Esca and other grapevine diseases.Use biological control agents and practices that promote beneficial microorganisms in the vineyard ecosystem.","Consultation and Education:Seek guidance and support from local agricultural extension services, vineyard consultants, or university researchers with expertise in grapevine diseases.Stay informed about new research, technologies, and best management practices for Esca management.",])),
  Plant(
      plantType: 'Grape',
      plantName: 'Grape Leaf Blight',
      image: 'assets/images/grape-leaf-blight.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(description: "Grape leaf blight, caused by the fungus Guignardia bidwellii (also known as Phyllosticta spp.), is a common disease affecting grapevines. It appears as small, circular to irregularly shaped lesions on grape leaves, initially yellowish-green and later turning brown or black with a dark border. Severe infections can lead to defoliation, reduced photosynthesis, and compromised vine health. Effective management is crucial to prevent yield losses and maintain vineyard productivity.", points:["Resistant Varieties:Plant grape varieties that are resistant or less susceptible to leaf blight.Choose disease-resistant rootstocks if available for increased protection.","Cultural Practices:Maintain vineyard hygiene by removing and destroying infected leaves, canes, and pruning debris promptly.Prune vines carefully to improve air circulation and reduce humidity within the canopy.Space vines adequately to promote airflow and minimize leaf wetness.","Fungicides:Apply fungicides labeled for grape leaf blight control according to the manufacturer's instructions.Begin fungicide applications preventatively, especially during periods of high humidity and rainfall.Rotate fungicides with different modes of action to prevent resistance development.","Pruning Techniques:Prune grapevines during the dormant season to remove diseased wood and improve overall vine health.Disinfect pruning tools between cuts and between vines to prevent spreading pathogens.","Nutrient Management:Maintain balanced nutrition to support vine vigor and resilience against diseases.Avoid excessive nitrogen fertilization, as it can promote lush foliage more susceptible to fungal infections.","Monitoring and Early DetectionRegularly scout vineyards for symptoms of leaf blight, including leaf lesions and discoloration.Implement early detection methods such as visual inspections and disease forecasting models.","Weather Management:Minimize leaf wetness by avoiding overhead irrigation or watering during the late afternoon or evening.Prune vines to improve light penetration and airflow, reducing favorable conditions for fungal growth.","Integrated Pest Management (IPM):Incorporate IPM practices that combine cultural controls, biological controls, and chemical treatments as needed.Use biological control agents and beneficial microorganisms to suppress fungal populations.","Training and Education:Train vineyard personnel on proper disease identification and management practices.Stay informed about new research findings and recommendations for grape leaf blight management.",])),];
