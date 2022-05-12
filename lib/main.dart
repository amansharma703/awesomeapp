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
      body:  Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          
          width: 100,
          height: 100,
          decoration:  BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 5,  offset: Offset(2.0,5.0))],
            borderRadius: BorderRadius.circular(10),
            color: Colors.purple,
            gradient:  const LinearGradient(colors: [Colors.blue, Colors.green])
          ),
          child: const Text("I am a Box", style: TextStyle(color: Colors.white, fontSize: 18))
        )
      )
    );
  }
}
