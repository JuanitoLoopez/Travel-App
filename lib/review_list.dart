import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Review('assets/img/image.jpeg', 'Haruna Yasar',
            '2 review 5 photos', 3, 'There is an amazing place Sri Lanka'),
      ],
    );
  }
}
