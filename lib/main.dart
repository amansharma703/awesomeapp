import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Bro"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
              padding: const EdgeInsets.all(8),
              
              width: 50,
              height: 100,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              
              width: 50,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              
              width: 50,
              height: 100,
              color: Colors.green,
            )
            ],
            ),
          ),
        ),
      )
    );
  }
}
