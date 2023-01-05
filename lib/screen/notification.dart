import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';

enum MessageType { all, unread }

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  MessageType? selectedMessage = MessageType.all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.adaptive.arrow_back,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Notification (4)",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.snackbar("Info", "No information at the moment");
                    },
                    child: const Icon(
                      Icons.info_outline,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: selectedMessage == MessageType.all
                          ? Style.MainBColor.withOpacity(.2)
                          : Style.MainBColor,
                      foregroundColor: selectedMessage == MessageType.all
                          ? Colors.black
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        selectedMessage = MessageType.all;
                      });
                    },
                    child: const Text("All"),
                  ),
                  SizedBox(width: 15),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: selectedMessage == MessageType.unread
                          ? Style.MainBColor.withOpacity(.2)
                          : Style.MainBColor,
                      foregroundColor: selectedMessage == MessageType.unread
                          ? Colors.black
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        selectedMessage = MessageType.unread;
                      });
                    },
                    child: const Text("Unread"),
                  ),
                ],
              ),
              SizedBox(height: 35),
              NotificationWidget(
                img: "assets/images/schedule.png",
                message:
                    "Lorem ipsum dolor sit amet consectetur. Convallis vestibulum netus potenti tempor est adipiscing",
                onPressed: () {
                  // function goes here.
                },
              ),
              NotificationWidget(
                img: "assets/images/map.png",
                message:
                    "Lorem ipsum dolor sit amet consectetur. Convallis ves empor est adipiscing",
                onPressed: () {
                  // function goes here.
                },
              ),
              NotificationWidget(
                img: "assets/images/update.png",
                message:
                    "Lorem ipsum dolor sit amet consectetur. Convallis vestibulu",
                onPressed: () {
                  // function goes here.
                },
              ),
              NotificationWidget(
                img: "assets/images/add.png",
                message: "Lorem ipsum dolor sit amet consectetur. Convallis ",
                onPressed: () {
                  // function goes here.
                },
              ),
              NotificationWidget(
                img: "assets/images/updated1.png",
                message: "New Upadate is avaiable.",
                onPressed: () {
                  // function goes here.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    required this.message,
    this.onPressed,
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
  final String? message;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                img,
                scale: 3.5,
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(message ?? "New notification",
                    maxLines: 3,
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            ],
          ),
          const Divider(color: Colors.green),
        ],
      ),
    );
  }
}
