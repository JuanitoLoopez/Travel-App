import 'package:flutter/material.dart';
import 'package:travel_app/third_challenge/third_challenge.dart';
class SearchTrips extends StatelessWidget {
  const SearchTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: const ThirdChallenge(),
    );
  }
}
