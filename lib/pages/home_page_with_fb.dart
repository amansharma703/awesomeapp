import 'package:awesomeapp/util/Constants.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import "package:http/http.dart" as http;
import "dart:convert";

class HomePageFB extends StatelessWidget {
  const HomePageFB({Key? key}) : super(key: key);

  Future getData() async {
    var res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(res.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome App"),
        actions: [
          IconButton(
              onPressed: () {
                Constants.prefs?.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Center(
                  child: Text("Fetch Something"),
                );
              case ConnectionState.active:
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Some Error Occured"),
                  );
                }

                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index]["title"]),
                      subtitle: Text("ID :  ${snapshot.data[index]["id"]}"),
                      leading: Image.network(snapshot.data[index]["url"]),
                    );
                  },
                  itemCount: snapshot.data!.length,
                );
            }
          }),
      drawer: MyDrawer(),
    );
  }
}
