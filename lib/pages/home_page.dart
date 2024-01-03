import 'package:flutter/material.dart';
import 'package:stock/widgets/drwer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Vinay";
    return Scaffold(
      appBar: AppBar(
        title: Text("Counting App"),
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
