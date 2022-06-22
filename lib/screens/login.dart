import 'dart:convert';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  FocusNode usernamefocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: const Text("Login")),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Hello Again",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    "assets/images/hayat2.png",
                  ),
                ),
                const Text(
                  // ignore: unnecessary_string_escapes
                  "Welcome back you\'ve been missed",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: usernameCtrl,
                          autofocus: false,
                          decoration: const InputDecoration(
                              border: InputBorder.none, hintText: "Username")),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                          controller: passwordCtrl,
                          obscureText: true,
                          onChanged: (value) {
                            setState(() {});
                          },
                          autofocus: false,
                          decoration: const InputDecoration(
                              border: InputBorder.none, hintText: "Password")),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => login(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Not a memeber? ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue),
                    ),
                  ],
                )
              ],
            );
          }),
        ),
      ),
    );
  }

  login() {
    // LoginData data =
    //     LoginData(username: usernameCtrl.text, password: passwordCtrl.text);
  }

  @override
  void dispose() {
    usernamefocusNode.dispose();
    super.dispose();
  }
}

class LoginData {
  final String username;
  final String password;
  LoginData({this.username = "", this.password = ""});
}
