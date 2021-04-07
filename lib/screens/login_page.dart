import 'package:aaa/helpers/package_imports.dart';
import 'package:aaa/screens/create_user.dart';
import 'package:wp_json_api/models/responses/wp_nonce_response.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login In Page"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
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
                controller: pwdController,
                decoration: InputDecoration(hintText: "Enter Password"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      // Get.to(CreateUser());
                    },
                    child: Column(
                      children: [
                        Text(
                          "Forget Password ?",
                        ),
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(CreateUser());
                    },
                    child: Column(
                      children: [
                        Text(
                          "Create An Account",
                        ),
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () async {
                  LoginControl.validateLogin(
                      nameController.text, pwdController.text);
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
