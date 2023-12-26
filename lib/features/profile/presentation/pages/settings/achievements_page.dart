import 'dart:ui';

import 'package:betting_quiz_app/features/profile/presentation/widget.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key});

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  int images = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4039EA),
      appBar: AppBar(
        backgroundColor: const Color(0xff2D7AE5),
        automaticallyImplyLeading: false,
        title: const Text(
          'Achievements',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ContainerWidget(
            onTap: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.00),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          // String pngPath = images;
          return Container(
            height: 214,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/png_images/levelImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x004A3BE1), Color(0xFF2C80E5)],
                    ),
                  ),
                ),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 3,
                      sigmaY: 2,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: DecoratedBox(
                        decoration:
                            BoxDecoration(color: Colors.pink.withOpacity(0.3)),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Image.asset(
                      'assets/png_images/lock.png',
                      fit: BoxFit.none,
                    ),
                  ),
                ),
                Positioned(
                    top: 130,
                    left: 65,
                    child: Text(
                      'Level 10 \naward ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
