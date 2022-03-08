import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/palm.jpeg"),
          CardImage("assets/img/orange.jpg"),
          CardImage("assets/img/tennis.jpg"),
        ],
      ),);
  }
}

