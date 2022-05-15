import 'package:flutter/material.dart';
import 'drawer.dart';
import "package:http/http.dart" as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  // String url = "https://jsonplaceholder.typicode.com/photos";
  var data = null;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Bro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? SingleChildScrollView(child: Card())
            : const Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {myText = _nameController.text, setState(() {})},
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
