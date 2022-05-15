import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Fluutter App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Container(child: const Center(child: Text("Hi Flutter"))),
    );
  }
}
