import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
            ),
            Text("Welcome",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username")),
                    TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print("Hi Vinay");
                        },
                        child: Text("Login"),
                        style: TextButton.styleFrom())
                  ],
                ))
          ],
        ));
  }
}
