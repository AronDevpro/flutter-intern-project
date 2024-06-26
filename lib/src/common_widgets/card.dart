import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CardComponent(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagePath, width: 300.0),
              const SizedBox(height: 15.0),
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),
              ),
              const SizedBox(height: 5.0),
              Text(
                description,
                style: const TextStyle(fontSize: 15.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Get it Now"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
