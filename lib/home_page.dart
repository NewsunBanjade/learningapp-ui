import 'package:flutter/material.dart';
import 'package:flutter_course_app/subject_model.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Welcome",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 211, 210, 210))),
                    Text(
                      "Find your course",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffE4F8F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Ionicons.search,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: const Color(0xffFFF3D3),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "60% off",
                            style: TextStyle(
                                color: Color.fromARGB(255, 37, 37, 37),
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Feb 14 - Mar 20",
                            style: TextStyle(
                                color: Color.fromARGB(255, 39, 39, 39)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Join Course",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      SizedBox(
                          height: 120,
                          width: 110,
                          child: Image.asset('assets/school_bag.png'))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Subject",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 15, color: Color(0xffE4F8F7)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 170),
                itemBuilder: (context, index) {
                  final data = subjects[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xff465363),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.network(data.image)),
                        Text(
                          data.name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$ ${data.price}",
                          style: const TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange.shade400,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(data.rating.toString())
                          ],
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      )),
    );
  }
}
