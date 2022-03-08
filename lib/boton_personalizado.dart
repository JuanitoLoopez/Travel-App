import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {
  BotonPersonalizado(this.botonTexto);
  String botonTexto = "Navigate";


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Naveagando"))); 
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, right: 20.0, left: 20),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors: [
              Color(0xf02eb304),
              Color(0xfbefef31),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(0.2, 0.6),
          ),
        ),
        child: Center(
          child: Text(botonTexto,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Lato",
            color: Colors.white,
          )),
        ),

      ),
    );
  }
}
