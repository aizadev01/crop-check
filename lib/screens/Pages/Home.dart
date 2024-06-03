import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cropcheckpro/models/plant.dart';
import 'package:cropcheckpro/screens/Pages/ListScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../data.dart';
import '../../widgets/curve.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected = 0;
  List<Plant> filteredPlants = plants;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Let\'s treat your plants well!',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    color: kDarkGreenColor,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            TextField(
              style: TextStyle(color: kDarkGreenColor),
              cursorColor: kDarkGreenColor,
              onChanged: (v){
                if(!(v.length > 0)) filteredPlants = plants;
              filteredPlants = filteredPlants.where((e) => e.plantName.toLowerCase().contains(v.toLowerCase())).toList();
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: kGinColor,
                hintText: 'Search Plant',
                hintStyle: TextStyle(color: kGreyColor),
                prefixIcon: Icon(
                  Icons.search,
                  color: kDarkGreenColor,
                  size: 26.0,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: kGinColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGinColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGinColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            const SizedBox(height: 4.0),
            // CategorySelector(
            //   selected: selected,
            //   categories: const [
            //     'Recommended',
            //     'Top',
            //     'Indoor',
            //     'Outdoor'
            //   ],
            //   onTap: (index) {
            //     setState(() {
            //       selected = index;
            //     });
            //   },
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230.0,
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 220.0,
                    child: ListView.separated(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: filteredPlants.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 20.0);
                      },
                      itemBuilder: (context, index) {
                        return PlantCard(
                          plantType: filteredPlants[index].plantType,
                          plantName: filteredPlants[index].plantName,
                          image: Image.asset(
                            filteredPlants[index].image,
                            alignment: Alignment.topLeft,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ListScreen(
                                    plant: filteredPlants[index],
                                    diseases: filteredPlants[index].subPlants,
                                    metas: filteredPlants[index].metas!,
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
                  child: Text(
                    'Recent Results',
                    style: TextStyle(
                      color: kDarkGreenColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                StreamBuilder(
                  stream: FirebaseFirestore.instance.collection('recent_results').snapshots(),
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }

                    return Column(
                      children: snapshot.data!.docs.map((document) {
                        return RecentlyViewedCard(
                          plantName: document.get('detectedDisease'),
                          plantInfo: document.get('createdAt').toDate().toString(),
                          image: NetworkImage(document.get('image_url')),
                        );
                      }).toList(),
                    );
                  },
                )


              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
// width: 80.0,
// height: 80.0,
// alignment: Alignment.center,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: image,
// ),
// borderRadius: BorderRadius.circular(10.0),
// ),
// ),
class RecentlyViewedCard extends StatelessWidget {
  const RecentlyViewedCard({
    required this.plantName,
    required this.plantInfo,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String plantName;
  final String plantInfo;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Container(
        width: 80.0,
        height: 80.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      title: Text(plantName),
      subtitle: Text(plantInfo),

    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    required this.plantType,
    required this.plantName,
    required this.image,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String plantType;
  final String plantName;
  final Image image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 220.0,
            width: 185.0,
            decoration: BoxDecoration(
              color: kGinColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: CustomPaint(
              painter: CurvePainter(),
            ),
          ),
          Positioned(
            // height: 240.0,
            // width: 124.0,
            left: 8.0,
            bottom: 70.0,
            child: Container(
              constraints:
                  const BoxConstraints(maxWidth: 124.0, maxHeight: 240.0),
              child: Hero(tag: plantName, child: image),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Container(
              width: 185,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            plantType,
                            style: TextStyle(
                              color: kDarkGreenColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 2.0),
                          Expanded(
                            child: Text(
                              plantName,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                color: kDarkGreenColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: kFoamColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      constraints: const BoxConstraints(maxWidth: 90.0),
                      child: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    Key? key,
    required this.selected,
    required this.categories,
    required this.onTap,
  }) : super(key: key);

  final int selected;
  final List<String> categories;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < categories.length; i++)
            AnimatedContainer(
              duration: const Duration(milliseconds: 120),
              padding: EdgeInsets.symmetric(
                vertical: selected == i ? 8.0 : 0.0,
                horizontal: selected == i ? 12.0 : 0.0,
              ),
              decoration: BoxDecoration(
                color: selected == i ? kGinColor : Colors.transparent,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: GestureDetector(
                onTap: () {
                  onTap(i);
                },
                child: Align(
                  child: Text(
                    categories[i],
                    style: TextStyle(
                      color: selected == i ? kDarkGreenColor : kGreyColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
