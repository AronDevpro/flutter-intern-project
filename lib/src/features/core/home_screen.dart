import 'package:flutter/material.dart';
import 'package:flutter_intern_project/src/common_widgets/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "imagePath": "assets/img/img-1.jpg",
        "title": "Comprehensive Curriculum",
        "description": "Our course covers everything from the fundamentals of "
            "currency markets to advanced trading strategies, as well as it equipped "
            "with high accurate technical analyzing lessons, trading psychology, money "
            "management, tricks for maintain trading discipline & more ensuring you have "
            "the knowledge and skills to excel",
      },
      {
        "imagePath": "assets/img/img-2.png",
        "title": "Practical Learning",
        "description":
            "We believe in hands-on experience. Our curriculum includes real - world case studies. simulations, and practical exercises to reinforce learning and build confidence",
      },
      {
        "imagePath": "assets/img/img-1.jpg",
        "title": "Track Records",
        "description":
            "Our track record speaks for itself. Many of our past students have gone on to become successful traders, and were committed to helping you achieve the some level of success.",
      },
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          title: const Text("Home"),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Our Exclusive Courses",
                    style:
                        TextStyle(fontSize: 25.0,
                            fontWeight:
                            FontWeight.w800),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text("View More"),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              Flexible(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final course = data[index];
                    return CardComponent(
                      imagePath: course["imagePath"]!,
                      title: course["title"]!,
                      description: course["description"]!,
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
