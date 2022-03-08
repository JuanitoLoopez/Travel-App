import 'package:flutter/material.dart';
import 'boton_personalizado.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace = "Juanito";
  int start = 0;
  String descriptionPlace = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam at id dolores perspiciatis nobis est reiciendis non quo possimus laboriosam maxime velit dolore perferendis maiores odit, in vero facere natus!";

  DescriptionPlace(this.namePlace, this.start, this.descriptionPlace,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: const EdgeInsets.only(
        top: 3,
        right: 20.0,
        left: 20.0
      ),
      child: Text(descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 14,
          color: Colors.black54,
        ),
      ),
    );
    final starBorder = Container (
        margin: const EdgeInsets.only(
            top: 295.0,
            right: 3.0
        ),
        child: const Icon(
          Icons.star_border,
          color: Color(0xFFf2C611,
          ),
        )
    );
    final starHalf = Container (
        margin: const EdgeInsets.only(
            top: 295.0,
            right: 3.0
        ),
        child: const Icon(
          Icons.star_half,
          color: Color(0xFFf2C611,
          ),
        )
    );
    final star = Container (
        margin: const EdgeInsets.only(
          top: 295.0,
          right: 3.0
        ),
        child: const Icon(
          Icons.star,
          color: Color(0xFFf2C611,
        ),
      )
    );
    final titleStarts = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starBorder
          ],
        ),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStarts,
        description,
        BotonPersonalizado("Navigate")
      ],
    );
  }
}