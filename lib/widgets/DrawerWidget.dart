import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cep/screens/myaccount.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text(
                "Programmer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'ifpa.edu.com.br',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/ifpa.jpg"),
              ),
            ),
          ),
          // ListTile(
          //   leading: Icon(
          //     CupertinoIcons.home,
          //     color: Colors.teal,
          //   ),
          //   title: Text('Home',
          //   style: TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold
          //   ),),
          // ),

          ListTile(
            leading: const Icon(
              CupertinoIcons.person,
              color: Colors.teal,
            ),
            title: const Text(
              'My Account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyAccount()),
                      );
            },
          ),

          const ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.teal,
            ),
            title: Text(
              'My Ordes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          const ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.teal,
            ),
            title: Text(
              'Wish List',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          const ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.teal,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          const ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.teal,
            ),
            title: Text(
              'Log out',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
