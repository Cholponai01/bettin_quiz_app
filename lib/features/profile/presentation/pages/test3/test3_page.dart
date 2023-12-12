import 'package:flutter/material.dart';

class Test3Page extends StatelessWidget {
  const Test3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Game")),
        ),
        body: Column(
          children: [
            Image.asset(
              "assets/images/soccer-players1.png",
              width: double.infinity,
            ),
          ],
        ));
  }
}
