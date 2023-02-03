import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          actions: const [
            Icon(Ionicons.heart_outline),
            SizedBox(
              width: 10,
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                  color: const Color(0xff465363),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Photography",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Ionicons.star,
                            color: Colors.orange.shade400,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "4.6 reviews",
                            style: TextStyle(color: Colors.white54),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    width: 60,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                        color: const Color(0xffFEF7DD),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Fee",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/camera.png",
              width: 200,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Outline",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5),
                ),
                Text(
                  "View all",
                  style: TextStyle(color: Color(0xffE4F8F7)),
                )
              ],
            ),
            CourseWidget(
              image: "https://img.icons8.com/clouds/256/aperture.png",
              title: "Camera Basics: Apeture",
            ),
            CourseWidget(
                image:
                    "https://img.icons8.com/external-flaticons-flat-flat-icons/256/external-camcorder-video-production-flaticons-flat-flat-icons-2.png",
                title: "Cinematic Video"),
            CourseWidget(
              image:
                  "https://img.icons8.com/external-flaticons-flat-flat-icons/256/external-colors-festivals-and-holidays-flaticons-flat-flat-icons.png",
              title: "Colors In Photo",
            )
          ],
        ),
      ),
    );
  }
}

class CourseWidget extends StatelessWidget {
  const CourseWidget({Key? key, required this.image, required this.title})
      : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xff465363), borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Image.network(image),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  "2h 35m",
                  style: TextStyle(color: Colors.white38),
                )
              ],
            )
          ]),
          Container(
            alignment: Alignment.center,
            width: 50,
            height: double.maxFinite,
            decoration:
                BoxDecoration(color: Color(0xffE4F8F7), shape: BoxShape.circle),
            child: Icon(
              Ionicons.play,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
