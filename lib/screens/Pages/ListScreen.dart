import 'package:cropcheckpro/main.dart';
import 'package:cropcheckpro/models/plant.dart';
import 'package:cropcheckpro/screens/Pages/CameraPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../models/ModelMetaData.dart';
import 'DetailScreen.dart';

class ListScreen extends StatefulWidget {
  final List<Plant> diseases;
  final Plant plant;
  final List<ModelMetaData> metas;

  const ListScreen(
      {Key? key,
      required this.diseases,
      required this.plant,
      required this.metas})
      : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //
    // This is the AppBar
    AppBar appBar = AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leadingWidth: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 20.0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              splashRadius: 1.0,
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kDarkGreenColor,
                size: 24.0,
              ),
            ),
          ),
          Text(
            "Cases",
            style: GoogleFonts.poppins(
              color: kDarkGreenColor,
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 40.0,
            child: IconButton(
              onPressed: () {},
              splashRadius: 1.0,
              icon: Icon(
                Icons.more_vert,
                color: kDarkGreenColor,
                size: 34.0,
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CameraPage(
                  cameras: cameras,
                  plant: widget.plant,
                  metas: widget.metas,
                );
              },
            ),
          );
        },
        label: const Text('Capture', style: TextStyle(color: Colors.white)),
        icon: const Icon(Icons.camera, color: Colors.white, size: 28),
      ),
      appBar: appBar,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView.builder(
            itemCount: widget.diseases.length,
            itemBuilder: (context, index) {
              return CartItemCard(item: widget.diseases[index]);
            },
          ),
        ),
      ),
    );
  }
}

class CartItemCard extends StatefulWidget {
  final Plant item;

  const CartItemCard({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(
                  title: widget.item.plantName,
                  description: widget.item.treatment.description,
                  image: widget.item.image,
                  points: widget.item.treatment.points)),
        );
      },
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: kGinColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          children: [
            Container(
              height: 80.0,
              width: 80.0,
              margin: const EdgeInsets.only(right: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(
                    widget.item.image,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // The First Widget
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.item.plantName,
                        style: GoogleFonts.poppins(
                          color: kDarkGreenColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: kDarkGreenColor,
                      ),
                    ],
                  ),

                  // The info about the plant
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Text(
                      "${widget.item.treatment.description.length > 40 ? widget.item.treatment.description?.substring(0, 40) : "Description"}...",
                      style: GoogleFonts.poppins(
                        color: kGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
