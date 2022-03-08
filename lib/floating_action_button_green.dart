import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonGreen> createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(const SnackBar(content: Text("Add to favorites")));
    Icons.favorite;
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff11da53),
      mini: true,
      tooltip: "Favorite",
      child: const Icon(
        Icons.favorite_border
      ),
      onPressed: onPressedFav,
    );
  }
}
