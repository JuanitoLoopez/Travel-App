import 'package:flutter/material.dart';
import 'package:travel_app/model/person.dart';

class Designer extends StatelessWidget {
  Designer(this.designerName, this.designerExp, this.pathImage,
      {Key? key}) : super(key: key);

  String designerName;
  int designerExp = 0;
  String pathImage = "";

  Persona persona = new Persona();


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.00),
      child: Row(
        children: [
          photo,
          name
        ],
      ),
    );
  }
  final name = Container(
    margin: const EdgeInsets.only(
        left: 20.0
    ),
    child: const Text(
      "designerName",
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: "Lato",
        fontSize: 17.0,
      ),
    ),
  );
  final photo = Container(
    margin: const EdgeInsets.only(
      top: 20.0,
      left: 20.0,
    ),
    width: 80.0,
    height: 80.0,
    decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("https://rickandmortyapi.com/api/character/avatar/1.jpeg")
        )
    ),
  );
}
