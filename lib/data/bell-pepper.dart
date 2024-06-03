



import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/ModelMetaData.dart';
import 'package:cropcheckpro/models/plant.dart';

List<ModelMetaData> bellPepperModelMetas = [
  ModelMetaData(
    index: "0",
    name: 'Bell Pepper Healthy Leaf',
    plant: bellPepperPlants[0],
  ),
  ModelMetaData(
    index: "1",
    name: 'Bell Pepper Bacterial Spot',
    plant: bellPepperPlants[1],
  ),
];

List<Plant> bellPepperPlants = [
  Plant(
      plantType: 'Bell Pepper',
      plantName: 'Bell Pepper Healthy Leaf',
      image: 'assets/images/bell-pepper-healthy.png',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description: "A healthy bell pepper leaf is vibrant green, smooth, and free from any spots, discoloration, or damage. The leaf is firm and robust, contributing to the overall vigor and productivity of the plant. Healthy leaves are crucial for photosynthesis, supporting the plant’s growth and the development of flavorful, high-quality bell peppers.",
          points: ["Location and Soil:Plant bell peppers in a sunny spot with well-drained, nutrient-rich soil.Ensure the soil is slightly acidic to neutral (pH 6.0-6.8) for optimal growth.
  ","Watering:Provide consistent moisture, keeping the soil evenly moist but not waterlogged.
      Water at the base of the plant to avoid wetting the foliage, which can lead to fungal diseases.
      ", "Fertilization:Apply a balanced fertilizer or compost to provide essential nutrients.
      Fertilize regularly during the growing season according to the package instructions.","Mulching:

      Apply a layer of organic mulch around the base of the plants to retain moisture, suppress weeds, and regulate soil temperature.
      Mulch also adds nutrients to the soil as it decomposes.","Pruning:

      Remove any yellowing or damaged leaves to promote airflow and reduce the risk of disease.
      Pinch off the growing tips to encourage bushier growth and more fruit production.","Pest and Disease Management:

      Monitor plants regularly for pests such as aphids, spider mites, and caterpillars.
          Use organic or chemical controls as needed, and practice crop rotation to reduce disease pressure.
      ","Support:

      Use stakes or cages to support the plants and keep the leaves off the ground.
      Proper support helps prevent disease and makes harvesting easier.
      ","Monitoring:

      Regularly check for signs of nutrient deficiencies, such as yellowing or discoloration of the leaves.
      Address any issues promptly with appropriate treatments or adjustments to care routines."])),
  Plant(
      plantType: 'Bell Pepper',
      plantName: 'Bell Pepper Bacterial Spot',
      image: 'assets/images/bell-pepper-bacterial-spot.jpg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description: "Bell pepper bacterial spot disease, caused by the bacterium Xanthomonas campestris pv. vesicatoria, appears as small, water-soaked lesions on leaves, stems, and fruit. These lesions often become dark, necrotic, and surrounded by a yellow halo. Severely affected leaves may drop prematurely, leading to reduced plant vigor and yield. The disease can spread rapidly under warm, humid conditions, making effective management essential to protect the health and productivity of bell pepper plants.",
points: [
            "Pruning:Prune affected branches and remove any infected leaves or fruit to reduce the spread of the disease.
Dispose of pruned material away from the garden to prevent reinfection.", "Fungicides:Apply copper-based bactericides according to the manufacturer's instructions.
Begin applications preventatively when conditions are conducive to disease development and continue at regular intervals throughout the growing season.","Sanitation:Keep the garden clean and free of debris to minimize the presence of bacterial spores.
Rake up fallen leaves and fruit, and remove any plant debris promptly.","Alternate Host Management:

Control alternate hosts such as weeds and volunteer pepper or tomato plants in the vicinity of the garden.
Remove any potential sources of bacterial spores to reduce the likelihood of infection.","Cultural Practices:

Maintain good airflow and reduce humidity in the garden by spacing plants adequately and thinning branches as needed.
Avoid overhead irrigation, which can promote bacterial spread, and water early in the day to allow foliage to dry quickly.","Resistant Varieties:

Plant bell pepper varieties that are resistant to bacterial spot if available.
While no variety is entirely immune to the disease, resistant varieties may exhibit greater tolerance and require less intensive management.","Monitoring:

Regularly inspect bell pepper plants for signs of bacterial spot, especially during periods of warm, humid weather conducive to bacterial growth.
Early detection allows for prompt intervention and better disease management.","Professional Consultation:

In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional horticulturists.
They can provide tailored recommendations and assistance in managing bell pepper bacterial spot effectively.",])),
];