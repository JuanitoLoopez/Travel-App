import 'package:flutter/material.dart';

class TCAppBar extends StatefulWidget {
  const TCAppBar({Key? key}) : super(key: key);

  @override
  State<TCAppBar> createState() => _TCNavigationBarState();
}

class _TCNavigationBarState extends State<TCAppBar> {

  final _app_bar = Stack(
    children: [
      Container(
        height: 80,
        width: 80,
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x00ffffff),
              Colors.orange,
              Colors.purpleAccent,
              Color(0x00000000),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 0.1),
            stops: [0.0, 0.4, 0.4, 1.0],

          )
        ),
      ),
      const InkWell(
        child: Icon(
        Icons.segment
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: _app_bar,),
    );
  }
}
