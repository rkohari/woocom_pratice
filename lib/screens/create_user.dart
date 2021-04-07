import 'package:aaa/core/woo_services/login_services.dart';
import 'package:flutter/material.dart';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  TextEditingController nameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController gmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Create a New User"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Enter User Name"),
              ),
              TextField(
                controller: gmailController,
                decoration: InputDecoration(hintText: "Enter gmail"),
              ),
              TextField(
                controller: pwdController,
                decoration: InputDecoration(hintText: "Enter Password"),
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () async{

                LoginControl.createAccount(nameController.text,gmailController.text,pwdController.text);
                nameController.clear();
                gmailController.clear();
                pwdController.clear();
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
