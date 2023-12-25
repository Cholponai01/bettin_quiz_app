import 'package:betting_quiz_app/features/profile/presentation/widget.dart';
import 'package:flutter/material.dart';

class AchievementsPage extends StatelessWidget {
  const AchievementsPage({super.key});

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
    );
  }
}
