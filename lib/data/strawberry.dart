import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/ModelMetaData.dart';
import 'package:cropcheckpro/models/plant.dart';


List<ModelMetaData> strawberryModelMetas = [
  ModelMetaData(
    index: "0",
    name: 'Strawberry Healthy Leaf',
    plant: strawberryPlants[0],
  ),
  ModelMetaData(
    index: "1",
    name: 'Strawberry Leaf Scorch',
    plant: strawberryPlants[1],
  ),
];
List<Plant> strawberryPlants = [
  Plant(
      plantType: 'Strawberry',
      plantName: 'Strawberry Healthy Leaf',
      image: 'assets/images/strawberry-healthy.png',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description: "A healthy strawberry leaf is characterized by its vibrant green color, smooth texture, and absence of discoloration, spots, or damage. Healthy leaves are crucial for photosynthesis, nutrient absorption, and overall plant vigor. They should be free from pests, diseases, and environmental stressors, ensuring optimal growth and fruit production in strawberry plants.",
          points: ["Site Selection and Soil Preparation:Choose a well-drained planting site with adequate sunlight exposure for strawberry plants.Conduct soil tests and amend the soil with organic matter to improve fertility and structure.","Planting and Spacing:Plant strawberries at the correct depth, with the crown at soil level and roots spread out.Space plants appropriately to allow for good airflow and light penetration, reducing disease risk.","Watering:Provide consistent moisture to strawberry plants, especially during dry periods and fruit development.Use drip irrigation or soaker hoses to water directly at the base of plants and avoid wetting the foliage.","Mulching:Apply a layer of organic mulch around strawberry plants to retain soil moisture, suppress weeds, and protect roots.Mulch also helps prevent soil splashing onto leaves, reducing the spread of soil-borne pathogens.","Nutrient Management:Fertilize strawberries with a balanced fertilizer or compost based on soil test recommendations.Avoid over-fertilization, especially with nitrogen, which can lead to lush foliage more susceptible to diseases.","Pest and Disease Monitoring:Regularly inspect strawberry plants for signs of pests such as aphids, mites, and slugs.Monitor for common strawberry diseases like powdery mildew, leaf spot, and anthracnose.Implement integrated pest management (IPM) strategies, including cultural controls and targeted pesticide applications if necessary.","Pruning and Removal of Diseased Leaves:Prune strawberry plants as needed to remove old or diseased leaves and improve airflow around the crown.Dispose of diseased plant material away from the growing area to prevent further spread of pathogens.","Weather Protection:Provide protection from extreme weather conditions such as frost, wind, and heavy rain to prevent leaf damage.Use row covers or protective structures as needed during adverse weather periods.","Training and Support:Train strawberry runners to promote healthy growth and fruit production.Provide support for trailing varieties to keep fruit off the ground and reduce disease risk.",])),
  Plant(
      plantType: 'Strawberry',
      plantName: 'Strawberry Leaf Scorch',
      image: 'assets/images/strawberry-leaf-scorch.png',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description: "Strawberry leaf scorch, caused by the bacterium Xanthomonas fragariae, is a disease that affects strawberry plants, particularly in humid and warm conditions. It manifests as small, water-soaked lesions on the leaves, which later turn brown or black with a scorched appearance. Severe infections can lead to leaf wilting, necrosis, and reduced plant vigor. Effective management is essential to prevent yield losses and maintain strawberry plant health.",
          points: ["Resistant Varieties:Plant strawberry varieties that are resistant or tolerant to leaf scorch if available.Select disease-resistant cultivars from reputable nurseries or suppliers.","Sanitation and Planting Practices:Start with disease-free planting material and avoid introducing infected plants to the garden.Remove and destroy any infected plant material promptly to prevent further spread.Space strawberry plants adequately to promote airflow and reduce humidity around the foliage.","Water Management:Water strawberry plants at the base to avoid wetting the foliage, which can promote bacterial growth.Use drip irrigation or soaker hoses to deliver water directly to the root zone and minimize leaf wetness.","Nutrient Management:Maintain balanced nutrition to support plant health and resilience against diseases.Avoid over-fertilization, especially with nitrogen, as it can contribute to lush foliage more susceptible to bacterial infections.","Copper-Based Sprays:Apply copper-based bactericides labeled for strawberry leaf scorch control according to the manufacturer's instructions.Begin treatments preventatively during periods of high humidity and rainfall or when disease risk is high.","Pruning and Removal of Infected Leaves:Prune strawberry plants to remove old or diseased leaves, improving airflow and reducing disease pressure.Dispose of infected plant material away from the garden to prevent bacterial spread.","Integrated Pest Management (IPM):Implement IPM strategies that combine cultural controls, such as crop rotation and sanitation, with targeted treatments for leaf scorch.Monitor plants regularly for signs of disease and take prompt action if symptoms are observed.","Weather Protection:Provide protection from extreme weather conditions, such as frost or heavy rain, to reduce stress on strawberry plants.Use row covers or protective structures during adverse weather periods.","Monitoring and Early Detection:Regularly inspect strawberry plants for symptoms of leaf scorch, including water-soaked lesions and leaf necrosis.Implement early detection methods and intervene quickly to prevent disease spread.",])),
];

