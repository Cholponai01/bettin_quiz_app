import 'package:betting_quiz_app/feature/pages/settings/achievements_page.dart';
import 'package:betting_quiz_app/feature/widget.dart';
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
  final List<String> icons = [
    'assets/png_icons/icon1.png',
    'assets/png_icons/volume_icon2.png',
    'assets/png_icons/icon3.png',
    'assets/png_icons/icon4.png',
    'assets/png_icons/share_icon5.png',
    'assets/png_icons/icon6.png',
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
                  index == 0
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AchievementsPage(),
                          ),
                        )
                      : null;
                },
                tileColor: const Color(0xFF2E6CE3),
                leading: ContainerWidget(icon: Image.asset(icons[index])),
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
