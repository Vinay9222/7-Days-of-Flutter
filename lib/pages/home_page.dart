import 'package:flutter/material.dart';
import 'package:stock/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Vinay";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days new day with $name !!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
