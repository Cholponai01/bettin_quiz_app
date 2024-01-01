import 'dart:ui';

import 'package:betting_quiz_app/feature/widget.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key});

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  final List<String> levelImages = [
    'assets/png_images/level1.png',
    'assets/png_images/level2.png',
    'assets/png_images/level3.png',
    'assets/png_images/level4.png',
  ];
  List<String> levelText = [
    'Level 5 \naward',
    'Level 10 \naward',
    'Level 15 \naward',
    'Level 20 \naward'
  ];
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
          padding: const EdgeInsets.all(11.0),
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
            mainAxisExtent: 224,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(levelImages[index]),
              ),
            ),
            child: index == 0
                ? null
                : Stack(
                    children: [
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
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffB0ACDF), width: 5),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/png_images/rectangle.png',
                                      ),
                                      fit: BoxFit.cover),
                                  color: Colors.pink.withOpacity(0.3)),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            levelText[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
