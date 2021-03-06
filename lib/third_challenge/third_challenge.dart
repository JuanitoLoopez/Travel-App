import 'package:flutter/material.dart';
import 'designer.dart';
import 'tc_app_bar.dart';
class ThirdChallenge extends StatelessWidget {
  const ThirdChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.segment,
        ),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        title: const Text("DESIGNERS"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25.00),
        scrollDirection: Axis.vertical,
        children: [
          Designer("Amanda Murphy", 04, "assets/img/tennis.jpg"),
          Designer("Grace Hartwell", 15, "assets/img/dolphin.jpg"),
        ],
      ),
    );
  }
}
