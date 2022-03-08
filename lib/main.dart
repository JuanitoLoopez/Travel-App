import 'package:flutter/material.dart';
import 'own_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OwnNavigationBar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const OwnNavigationBar();
  }
  final list = Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: const ListTile(
          title: Text('French'),
          subtitle: Text('''Hello again!!
This is your trip description.'''),
          leading: Icon(Icons.airplanemode_active,
            color: Colors.redAccent,),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: const ListTile(
          title: Text('Italy'),
          subtitle: Text('''  Hello again!!
This is your trip description.'''),
          leading: Icon(Icons.airplanemode_active,
            color: Colors.greenAccent,),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: const ListTile(
          title: Text('Canada'),
          subtitle: Text('''  Hello again!!
This is your trip description.'''),
          leading: Icon(Icons.airplanemode_active),
        ),
      ),
    ],
  );
}
