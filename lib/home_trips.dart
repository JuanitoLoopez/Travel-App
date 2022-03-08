import 'package:flutter/material.dart';
import 'package:travel_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

// ignore: must_be_immutable
class HomeTrips extends StatelessWidget {
  HomeTrips({Key? key}) : super(key: key);
  String descriptionPlace = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const HeaderAppBar(),
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4, descriptionPlace),
            const ReviewList(),
          ],
        ),
      ],
    );
  }
}
