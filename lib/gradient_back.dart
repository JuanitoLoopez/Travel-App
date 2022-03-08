import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";
  GradientBack(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xf02eb304),
            Color(0xfbefef31),
          ],
          begin: FractionalOffset(0.3,00.00),
          end: FractionalOffset(0.4, 3.23),
          stops: [0.0, 0.8],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold,
      ),),
      alignment: const Alignment(-0.9, -0.6),
    );
  }
}
