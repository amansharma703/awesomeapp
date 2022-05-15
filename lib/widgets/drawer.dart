import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          // DrawerHeader(
          //   child: Text(
          //     "Hi I'am Drawer",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(color: Colors.purple),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Aman Sharma"),
            accountEmail: Text("aman@aman.com"),
            // currentAccountPicture: CircleAvatar(
            //   backgroundImage: NetworkImage("url"),
            // ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
