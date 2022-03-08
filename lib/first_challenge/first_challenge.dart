import 'package:flutter/material.dart';

Widget backgroundImage(){
  return const Image(
    image:
    AssetImage('assets/image.jpeg'),
    height: double.infinity,
    width: double.infinity,
    fit: BoxFit.cover,
  );
}