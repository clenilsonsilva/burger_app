import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cep/class/listcard.dart';
import 'package:flutter_cep/drawerpage/my_account/my_infos.dart';
import 'package:flutter_cep/drawerpage/entrar_cadastrar/login_page.dart';

class DrawerWidget extends StatelessWidget {
  //lista dos drawers
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ValueListenableBuilder(
        valueListenable: cadastrado,
        child: const DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            accountName: Text(
              //nome usuario
              "Programmer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              //email usuario
              'ifpa.edu.com.br',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              //imagem usuario
              backgroundImage: AssetImage("images/ifpa.jpg"),
            ),
          ),
        ),
        builder: (context, value, child) {
          return ListView(
            children: [
              child!,
              value==false ? ListTile(
                //minha conta
                leading: const Icon(
                  CupertinoIcons.person,
                  color: Colors.teal,
                ),
                title: const Text(
                  'Entrar/Cadastrar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  //abre a pagina com as infos
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ) : const SizedBox(),
              value == true
                  ? ListTile(
                      //minha conta
                      leading: const Icon(
                        CupertinoIcons.person,
                        color: Colors.teal,
                      ),
                      title: const Text(
                        'My Account',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        //abre a pagina com as infos
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAccount()),
                        );
                      },
                    )
                  : const SizedBox(),
              value == true
                  ? const ListTile(
                      //pedidos
                      leading: Icon(
                        CupertinoIcons.cart_fill,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'My Ordes',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  : const SizedBox(),
              value == true
                  ? const ListTile(
                      //favoritos
                      leading: Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Wish List',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  : const SizedBox(),
              value == true
                  ? const ListTile(
                      //configs
                      leading: Icon(
                        CupertinoIcons.settings,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  : const SizedBox(),
              value == true
                  ? const ListTile(
                      //sair da conta
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Log out',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  : const SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
