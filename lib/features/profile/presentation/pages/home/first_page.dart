import 'package:flutter/material.dart';

import 'second_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                "assets/images/Vector.png",
              ),
              fit: BoxFit.cover),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 23, 20, 219),
              Colors.purple.shade900,
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/icon.png",
              height: 590,
              width: 396,
            ),
            Positioned(
              top: 540,
              child: Column(
                children: [
                  const Text(
                    "QF: Football Betting\n Quiz",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SecondScreen()));
                    },
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      elevation: 1,
                      backgroundColor:
                          // Color.fromRGBO(147, 237, 56, 1),
                          Color.fromRGBO(39, 213, 80, 1),
                      minimumSize: const Size(311, 56),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text('Terms of Use',
                          style: TextStyle(
                            color: Color.fromRGBO(204, 209, 243, 1),
                          )),
                      SizedBox(width: 42),
                      Text('Privacy Policy',
                          style: TextStyle(
                            color: Color.fromRGBO(204, 209, 243, 1),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
