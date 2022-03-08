import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Segundo Reto: Juanito Lopez"),
        ),
        body: Stack(
          children: <Widget>[
            _backgroundImage(),
            _centeredText()
          ],
        )
      )
    );
  }
}

Widget _backgroundImage(){
  return const Image(
    image:
    AssetImage('assets/image.jpeg'),
    height: double.infinity,
    width: double.infinity,
    fit: BoxFit.cover,
  );
}

Widget _centeredText(){
  return Center(
    child: Container(
      height: 75,
      color: const Color.fromRGBO(0, 0, 0, 0.2),
      child: const Center(
        child: Text('Vive la vida', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.lightBlue),),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
