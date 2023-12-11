import 'package:betting_quiz_app/features/profile/presentation/pages/home/quiz_1.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
              alignment: FractionalOffset(7, 7),
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
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 130,
                child: Image.asset(
                  "assets/images/icon.png",
                  height: 126,
                  width: 125,
                ),
              ),
              Positioned(
                top: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Soccer Star\n subscription",
                      style: TextStyle(
                          height: 1.2,
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "Become a real star of our soccer quiz with a \nFootball Star subscription",
                      style: TextStyle(
                          color: Color.fromRGBO(204, 209, 243, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/frame.png"),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Unlimited access",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Unlock all levels and enjoy a complete soccer\n quiz without limits!",
                                  style: TextStyle(
                                      color: Color.fromRGBO(204, 209, 243, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/frame.png"),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "No commercials",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "No annoying ads! Immerse yourself in the\n game to the fullest without interruption.",
                                  style: TextStyle(
                                      color: Color.fromRGBO(204, 209, 243, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/frame.png"),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Coin bonus",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Get 1000 coins to your game account at once - \nthis is your ticket to victory and new achievements!",
                                  style: TextStyle(
                                      color: Color.fromRGBO(204, 209, 243, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => QuizPage()));
                      },
                      child: Text(
                        "Get \$2.99 / month",
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
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Text(
                          'Terms of Use',
                          style: TextStyle(
                            color: Color.fromRGBO(204, 209, 243, 1),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'Restore',
                          style: TextStyle(
                            color: Color.fromRGBO(204, 209, 243, 1),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Color.fromRGBO(204, 209, 243, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
