import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';

class HelpandSupport extends StatelessWidget {
  const HelpandSupport({super.key});

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
          "Help and Support",
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            Text(
              "Lorem ipsum dolor sit amet consectetur. Fermentum massa facilisis nullam lacus vulputate sed tellus netus. Magna augue neque feugiat vitae feugiat. Feugiat proin in sit porta. Lorem aliquam in vel iaculis eros. Nullam tellus turpis habitant volutpat.",
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              "Lorem ipsum dolor sit amet consectetur. Fermentum massa facilisis nullam lacus vulputate sed tellus netus. Magna augue neque feugiat vitae feugiat. Feugiat proin in sit porta. Lorem aliquam in vel iaculis eros. Nullam tellus turpis habitant volutpat.",
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
