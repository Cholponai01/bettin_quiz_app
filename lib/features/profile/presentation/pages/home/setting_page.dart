import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: 168,
              height: 168,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0x004A3BE1), Color(0xFF2C80E5)],
                ),
              ),
            )
          ],
        ));
  }
}
