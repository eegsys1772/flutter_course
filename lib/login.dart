import 'package:flutter/material.dart';

class MyApp5 extends StatelessWidget {
  const MyApp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var fkey = GlobalKey<FormState>();
  var txtUsername = TextEditingController();
  var txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fkey,
        child: Column(
          children: [
            SizedBox(height: 100),
            Text("Sign in", style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent)),
            TextFormField(
              controller: txtUsername,
              validator:(value) {
                if(value == null || value.isEmpty)
                  return "Username is required";
                else
                  return null;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter your username",
                labelText: "User name",

              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: txtPassword,
              validator:(value) {
                if(value == null || value.isEmpty)
                  return "Password is required";
                else if(value.length < 6)
                  return "Your password is at least eight 8 characters long";
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.lock_open),
                  hintText: "Enter your password",
                  labelText: "Password"
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              if(fkey.currentState!.validate()) {
                print("OK");
                var username = txtUsername.text;
                var password = txtPassword.text;
                var alert = AlertDialog(
                    content: Text("${username}, ${password}")
                );
                showDialog(context: context, builder: (context){
                  return alert;
                });
              } else {
                print("Not OK");
              }
            },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
