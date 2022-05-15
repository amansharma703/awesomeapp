import 'package:flutter/material.dart';

class ChangenameCard extends StatelessWidget {
  const ChangenameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset("assets/bg.PNG"),
      const SizedBox(
        height: 20,
      ),
      Text(
        myText,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          controller: _nameController,
          keyboardType: TextInputType.text,
          // obscureText: true,
          decoration: InputDecoration(
              hintText: "Enter Something error",
              labelText: "Name",
              border: OutlineInputBorder()),
        ),
      )
    ]);
  }
}
