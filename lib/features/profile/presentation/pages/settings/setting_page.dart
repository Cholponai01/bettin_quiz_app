// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:betting_quiz_app/features/profile/presentation/pages/settings/achievements_page.dart';
import 'package:betting_quiz_app/features/profile/presentation/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List<String> words = [
    'Achievements',
    'Vibration',
    'Privacy Policy',
    'Terms of Use',
    'Share',
    'Help',
  ];

  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4039EA),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AchievementsPage(),
                      ),
                    );
                  }
                },
                tileColor: const Color(0xFF2E6CE3),
                leading: const ContainerWidget(
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  words[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: index == 1
                    ? CupertinoSwitch(
                        value: switchValue,
                        trackColor: Colors.grey,
                        activeColor: Colors.green,
                        onChanged: (bool? value) {
                          setState(() {
                            switchValue = value ?? false;
                          });
                        },
                      )
                    : const ContainerWidget(
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
                  height: 7,
                ),
            itemCount: words.length),
      ),
    );
  }
}
