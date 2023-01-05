import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/widget/button.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  var rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Style.MainBColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "Feedback",
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Your Opinion Matter To Us !',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: Style.MainBColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'How Was The Quality Of our Service ?',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            5,
                            (index) => IconButton(
                                onPressed: () {
                                  setState(() {
                                    rating = index + 1;
                                  });
                                },
                                icon: index < rating
                                    ? Icon(
                                        Icons.star,
                                        color: Color(0xFFFABD3B),
                                        size: 35,
                                      )
                                    : Icon(
                                        Icons.star_border,
                                        size: 35,
                                        color: Colors.white,
                                      )))),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Colors.white),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          hintText: 'Add a comment',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1D1D1D)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  style: BorderStyle.none)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  style: BorderStyle.none))),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Button(text: "Rate Now",
                   
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    // Get.to(() => LetsIndiaWork());
                  },
                  child: Text(
                    'May be later',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF010101)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
