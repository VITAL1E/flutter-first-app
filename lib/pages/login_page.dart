import 'package:example/pages/home_page.dart';
import 'package:example/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";

  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "asset/bg.jpeg", 
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        controller: _usernameController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (s) {},
                        decoration: InputDecoration(
                          hintText: "Enter email",
                          labelText: "Username" 
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        validator: (s) {},
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password" 
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Constants.prefs.setBool("loggedIn", true);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => HomePage() 
                          Navigator.pushReplacementNamed(
                            context, HomePage.routeName
                          );
                        },
                        child: Text("Sign In"),
                        color: Colors.orange,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
      ),
          ),
        )
    ],
    )
    );
  }
}