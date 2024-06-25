import 'package:flutter/material.dart';
import 'package:flutter_intern_project/src/common_widgets/header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Header()
      ],),
    );
  }
}