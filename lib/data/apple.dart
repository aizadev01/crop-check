
import 'package:cropcheckpro/models/ModelConfig.dart';
import 'package:cropcheckpro/models/ModelMetaData.dart';
import 'package:cropcheckpro/models/plant.dart';


List<ModelMetaData> appleModelMetas = [
  ModelMetaData(
    index: "0",
    name: 'Healthy Apple Leaf',
    plant: applePlants[0],
  ),
  ModelMetaData(index: "1", name: 'Apple Rust', plant: applePlants[1]),
  ModelMetaData(index: "2", name: 'Apple Scab', plant: applePlants[2]),
  ModelMetaData(index: "3", name: 'Apple Brown Spot', plant: applePlants[3]),
  ModelMetaData(index: "4", name: 'Apple Gray Spot', plant: applePlants[4]),
  ModelMetaData(index: "5 ", name: 'Apple Black Rot', plant: applePlants[5]),
];

List<Plant> applePlants = [
  Plant(
      plantType: 'Apple',
      plantName: 'Healthy Apple',
      image: 'assets/images/healthy-apple-leave.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description:
              "The apple plant stands tall, its branches adorned with vibrant green leaves and clusters of promising fruit. Its roots delve deep into nutrient-rich soil, anchoring it firmly in place. The plant exudes vitality, with a balanced canopy and sturdy limbs ready to bear the weight of its bounty. Each apple, a testament to the plant's health, gleams with natural beauty and potential.",
          points: [
            "Location and Soil: Plant in a sunny spot with well-drained soil, preferably slightly acidic. Adequate drainage prevents waterlogging and root rot.",
            "Pruning: Regularly prune to maintain shape, improve air circulation, and remove dead or diseased branches. Prune during the dormant season to encourage healthy growth.",
            "Watering: Provide consistent moisture, especially during dry spells. Deep watering encourages deep root growth. Avoid overwatering, which can lead to fungal diseases.",
            "Fertilization: Apply balanced fertilizer in early spring before new growth begins. Follow package instructions for proper dosage and application method.",
            "Pest and Disease Management: Monitor for pests such as aphids, mites, and codling moths. Use integrated pest management techniques, including natural predators and organic sprays, to control infestations. Prevent diseases like apple scab and powdery mildew through proper sanitation and fungicidal treatments if necessary.",
            "Thinning Fruit: Thin excess fruit to promote larger, healthier apples. Aim for one fruit per cluster, evenly spaced along branches, to prevent overcrowding.",
            "Mulching: Apply a layer of organic mulch around the base of the plant to retain moisture, suppress weeds, and add nutrients to the soil as it decomposes.",
            "Protection from Frost: Shield the plant from frost damage with frost blankets or by planting in a location protected from cold winds.",
            "Harvesting: Harvest apples at the peak of ripeness by gently twisting or lifting them from the tree. Proper storage ensures longevity and maintains fruit quality."
          ])),
  Plant(
      plantType: 'Apple',
      plantName: 'Apple Rust',
      image: 'assets/images/apple-leaf-scab.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description:
              "Apple rust, also known as cedar-apple rust, is a fungal disease that affects apple trees and related species. It manifests as distinctive orange to rust-colored lesions or spots on the leaves, often accompanied by yellowing or premature leaf drop. As the disease progresses, it may also affect fruit, causing deformities and reducing quality. Apple rust is caused by fungal spores carried by the wind from alternate hosts such as cedar or juniper trees. It thrives in warm, humid conditions and can spread rapidly in susceptible orchards, posing a significant threat to apple production.",
          points: [
            "Pruning: Prune affected branches and remove any infected leaves or fruit to reduce the spread of the disease. Dispose of pruned material away from the orchard to prevent reinfection.",
            "Fungicides: Apply fungicides labeled for apple rust according to the manufacturer's instructions. Copper-based fungicides are commonly used to control fungal diseases in apple trees. Begin applications preventatively in early spring before symptoms appear and continue at regular intervals throughout the growing season.",
            "Sanitation: Keep the orchard clean and free of debris to minimize the presence of fungal spores. Rake up fallen leaves and fruit, and remove any mummified fruit left on the tree or ground.",
            "Alternate Host Management: Control alternate hosts such as cedar or juniper trees in the vicinity of the orchard. Prune back overhanging branches and remove infected trees if possible to reduce the source of fungal spores.",
            "Cultural Practices: Maintain good airflow and reduce humidity in the orchard by spacing trees adequately and thinning branches as needed. Avoid overhead irrigation, which can promote fungal growth, and water early in the day to allow foliage to dry quickly.",
            "Resistant Varieties: Plant apple tree varieties that are resistant to apple rust if available. While no apple tree is entirely immune to the disease, resistant varieties may exhibit greater tolerance and require less intensive management.",
            "Monitoring: Regularly inspect apple trees for signs of apple rust, especially during periods of warm, humid weather conducive to fungal growth. Early detection allows for prompt intervention and better disease management.",
            "Professional Consultation: In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional arborists. They can provide tailored recommendations and assistance in managing apple rust effectively."
          ])),
  Plant(
      plantType: 'Apple',
      plantName: 'Apple Scab',
      image: 'assets/images/apple-leaf-scab.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description:
              "Apple scab is a fungal disease caused by the pathogen Venturia inaequalis, which affects apple trees worldwide. It typically appears as dark, olive-green to black lesions on the leaves, fruit, and sometimes on young twigs. These lesions can cause distortion and premature dropping of leaves and fruit, leading to reduced yields and fruit quality. Apple scab thrives in warm, humid conditions and can overwinter in infected leaves and fruit on the ground, as well as in dormant buds. It spreads rapidly during the growing season, posing a significant threat to apple orchards if left unmanaged.",
          points: [
            "Pruning: Prune infected branches and remove any diseased leaves or fruit to prevent the spread of spores. Dispose of pruned material away from the orchard or burn it to eliminate the fungal inoculum.",
            "Fungicides: Apply fungicides labeled for apple scab control according to the manufacturer's instructions. Fungicides containing active ingredients such as captan, mancozeb, or chlorothalonil are commonly used to manage apple scab. Begin applications preventatively in early spring before bud break and continue on a regular schedule throughout the growing season.",
            "Sanitation: Keep the orchard clean and free of fallen leaves, fruit, and other debris to reduce the presence of overwintering spores. Rake up and remove infected material promptly, especially in the fall after leaf drop.",
            "Cultural Practices: Improve air circulation within the orchard by spacing trees adequately and thinning branches as needed. Prune to open up the canopy and allow sunlight to penetrate, as this helps reduce humidity and inhibit fungal growth. Avoid overhead irrigation, which can create conditions favorable for disease development.",
            "Resistant Varieties: Plant apple tree varieties that are resistant to apple scab if available. While no apple tree is entirely immune to the disease, resistant varieties may exhibit greater tolerance and require less intensive management.",
            "Mulching: Apply a layer of organic mulch around the base of apple trees to suppress weeds and reduce soil splash, which can spread fungal spores. Use mulch materials that decompose slowly to minimize the risk of harboring fungal pathogens.",
            "Monitoring: Regularly inspect apple trees for signs of apple scab, especially during periods of warm, wet weather when the disease is most active. Early detection allows for prompt intervention and better disease management.",
            "Professional Consultation: In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional arborists. They can provide tailored recommendations and assistance in managing apple scab effectively."
          ])),
  Plant(
      plantType: 'Apple',
      plantName: 'Apple Brown Spot',
      image: 'assets/images/apple-leaf-scab.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
          TreatmentData(
              description: "Apple brown spot disease, caused by the fungus Marssonina coronaria, appears as dark brown, necrotic lesions on apple leaves, fruit, and sometimes stems. These spots can merge, forming larger blotches that disrupt photosynthesis, leading to premature leaf drop and reduced fruit quality. The disease can significantly impact the overall health and productivity of the apple tree, making early detection and management crucial.",
              points: [
       "Pruning:Prune affected branches and remove any infected leaves or fruit to reduce the spread of the disease.
          Dispose of pruned material away from the orchard to prevent reinfection.", "Fungicides:

              Apply fungicides labeled for apple brown spot according to the manufacturer's instructions.
          Copper-based fungicides are commonly used to control fungal diseases in apple trees.
          Begin applications preventatively in early spring before symptoms appear and continue at regular intervals throughout the growing season.", "Sanitation:

          Keep the orchard clean and free of debris to minimize the presence of fungal spores.
          Rake up fallen leaves and fruit, and remove any mummified fruit left on the tree or ground.", "Alternate Host Management:

          Control alternate hosts such as cedar or juniper trees in the vicinity of the orchard.
          Prune back overhanging branches and remove infected trees if possible to reduce the source of fungal spores.
          ","Cultural Practices:

          Maintain good airflow and reduce humidity in the orchard by spacing trees adequately and thinning branches as needed.
              Avoid overhead irrigation, which can promote fungal growth, and water early in the day to allow foliage to dry quickly.","Resistant Varieties:

          Plant apple tree varieties that are resistant to apple brown spot if available.
          While no apple tree is entirely immune to the disease, resistant varieties may exhibit greater tolerance and require less intensive management.", "Monitoring:

          Regularly inspect apple trees for signs of apple brown spot, especially during periods of warm, humid weather conducive to fungal growth.
          Early detection allows for prompt intervention and better disease management.", "Professional Consultation:

          In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional arborists.
          They can provide tailored recommendations and assistance in managing apple brown spot effectively.",])),
  Plant(
      plantType: 'Apple',
      plantName: 'Apple Gray Spot',
      image: 'assets/images/apple-leaf-scab.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment:
          TreatmentData(description: "Apple gray spot disease, caused by the fungus Pestalotia malicola, is characterized by grayish lesions on apple leaves, fruit, and sometimes stems. These lesions can expand, creating larger patches that disrupt photosynthesis, lead to premature leaf drop, and affect fruit quality. The disease can significantly impact the health and productivity of the apple tree, making effective management essential.",
              points: [
        "Pruning:

              Prune affected branches and remove any infected leaves or fruit to reduce the spread of the disease.
              Dispose of pruned material away from the orchard to prevent reinfection.","Fungicides:

              Apply fungicides labeled for apple gray spot according to the manufacturer's instructions.
              Copper-based fungicides are commonly used to control fungal diseases in apple trees.
              Begin applications preventatively in early spring before symptoms appear and continue at regular intervals throughout the growing season.
              ","Sanitation:

              Keep the orchard clean and free of debris to minimize the presence of fungal spores.
              Rake up fallen leaves and fruit, and remove any mummified fruit left on the tree or ground.","Alternate Host Management:

              Control alternate hosts such as nearby plants that may harbor the fungus.
              Prune back overhanging branches and remove infected plants if possible to reduce the source of fungal spores.
              ","Cultural Practices:

              Maintain good airflow and reduce humidity in the orchard by spacing trees adequately and thinning branches as needed.
              Avoid overhead irrigation, which can promote fungal growth, and water early in the day to allow foliage to dry quickly.
              ","Resistant Varieties:

              Plant apple tree varieties that are resistant to apple gray spot if available.
              While no apple tree is entirely immune to the disease, resistant varieties may exhibit greater tolerance and require less intensive management.","Monitoring:

              Regularly inspect apple trees for signs of apple gray spot, especially during periods of warm, humid weather conducive to fungal growth.
              Early detection allows for prompt intervention and better disease management.","Professional Consultation:

              In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional arborists.
              They can provide tailored recommendations and assistance in managing apple gray spot effectively.",
      ])),
  Plant(
      plantType: 'Apple',
      plantName: 'Apple Black Rot',
      image: 'assets/images/apple-black-rot.jpeg',
      subPlants: [],
      modal: ModelConfig(modalPath: '', labelPath: ''),
      treatment: TreatmentData(
          description:
              "Apple black rot disease, caused by the fungus Botryosphaeria obtusa, affects apple trees by producing dark, sunken lesions on the fruit, leaves, and branches. Infected fruit exhibit characteristic black rot spots, often leading to complete fruit decay. Leaves may develop purple-bordered spots, and branches can show signs of cankers, leading to dieback. This disease can severely impact tree health and fruit quality, necessitating effective management.",
          points: [
            "Pruning:Prune affected branches and remove any infected leaves or fruit to reduce the spread of the disease.
      Dispose of pruned material away from the orchard to prevent reinfection.
      ","Fungicides:

          Apply fungicides labeled for apple black rot according to the manufacturer's instructions.
      Copper-based and other appropriate fungicides can help control fungal diseases in apple trees.
      Begin applications preventatively in early spring before symptoms appear and continue at regular intervals throughout the growing season.","Sanitation:

      Keep the orchard clean and free of debris to minimize the presence of fungal spores.
      Rake up fallen leaves and fruit, and remove any mummified fruit left on the tree or ground.","Alternate Host Management:

      Control alternate hosts such as brambles and wild apples in the vicinity of the orchard.
      Prune back overhanging branches and remove infected plants if possible to reduce the source of fungal spores.","Cultural Practices:

      Maintain good airflow and reduce humidity in the orchard by spacing trees adequately and thinning branches as needed.
          Avoid overhead irrigation, which can promote fungal growth, and water early in the day to allow foliage to dry quickly.","Resistant Varieties:

      Plant apple tree varieties that are resistant to apple black rot if available.
      While no apple tree is entirely immune to the disease, resistant varieties may exhibit greater tolerance and require less intensive management.","Monitoring:

      Regularly inspect apple trees for signs of apple black rot, especially during periods of warm, humid weather conducive to fungal growth.
      Early detection allows for prompt intervention and better disease management.","Professional Consultation:

      In severe cases or if the disease persists despite control efforts, seek advice from agricultural extension services or professional arborists.
      They can provide tailored recommendations and assistance in managing apple black rot effectively.",
          ])),
];
