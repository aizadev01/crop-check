import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class DetailScreen extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final List<String> points;
  const DetailScreen({Key? key, required this.image, required this.title, required this.description, required this.points  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 55.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 200.0,
              width: double.infinity,
              margin: const EdgeInsets.only(right: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18, width: double.infinity,),
            Text(
              title,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: kDarkGreenColor,
              ),
            ),
            const SizedBox(height: 4.0),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 22.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Treatment',
                        style: GoogleFonts.poppins(
                          color: kDarkGreenColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                        child: Text(
                          description,
                          style: GoogleFonts.poppins(
                            color: kDarkGreenColor,
                          ),
                        ),
                      ),
                      for (var item in points)
                        ListTile(
                          title: Text(item),
                          leading: Container(
                            width: 10.0,
                            height: 10.0,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                    ]))
          ]),
        ),
      ),
    );
  }
}
