import 'package:flutter/material.dart';
import 'designer.dart';
class ThirdChallenge extends StatelessWidget {
  const ThirdChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(25.00),
      scrollDirection: Axis.vertical,
      children: const [
        Designer(),
        Designer()
      ],
    );
  }
}
