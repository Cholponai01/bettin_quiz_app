import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _images = [
    'assets/png_images/first_image.png',
    'assets/png_images/football_stadium.png',
    'assets/png_images/soccer_teams.png',
    'assets/png_images/soccer_terms.png',
    'assets/png_images/soccer_player.png',
    'assets/png_images/soccer_match.png',
    'assets/png_images/national_team.png',
    'assets/png_images/match_results.png',
  ];

  List<String> texts = [
    'Elementary level',
    'Soccer stadiums',
    'Soccer teams',
    'Soccer terms',
    'Guess the soccer player',
    'Guess a soccer match',
    'Guess the national team',
    'Guess match results',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A4FC8),
      body: Expanded(
        child: GridView.builder(
          padding: const EdgeInsets.all(16.00),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemCount: texts.length,
          itemBuilder: (BuildContext context, int index) {
            String pngPath = _images[index];
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(pngPath),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '0${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          texts[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 16),
                        for (int i = 0; i < 3; i++)
                          SvgPicture.asset(
                            'assets/svg_images/Star.svg',
                            height: 37,
                            width: 37,
                            // ignore: deprecated_member_use
                            color: const Color(0xFF406FD6),
                          ),
                        const SizedBox(width: 16),
                      ],
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
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3)),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 51,
                      width: 51,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: const Color(0xffFABB03)),
                        child: SvgPicture.asset(
                          'assets/svg_images/key.svg',
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
