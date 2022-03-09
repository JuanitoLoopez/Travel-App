import 'package:flutter/material.dart';

class Designer extends StatelessWidget {

  String designerName = "Amanda Murphy";
  int designerExp;

  Designer(this.designerName, this.designerExp, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.00),
      child: Text("Hey"),
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
}
