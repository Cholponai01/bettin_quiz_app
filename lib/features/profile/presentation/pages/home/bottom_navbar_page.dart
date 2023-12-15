import 'package:betting_quiz_app/features/profile/presentation/pages/home/home_page.dart';
import 'package:betting_quiz_app/features/profile/presentation/pages/home/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            Scaffold(),
            HomePage(),
            SecondPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xffCCD1F3),
        backgroundColor: const Color(0xff2D7AE5),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'Store',
              icon: _currentIndex == 0
                  ? Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Colors.blue),
                          color: const Color(0xff1EC2FF)),
                      child: SvgPicture.asset(
                        "assets/bottom_icons/shopping_cart.svg",
                        // ignore: deprecated_member_use
                        color: _currentIndex == 0
                            ? Colors.white
                            : const Color(0xffCCD1F3),
                        fit: BoxFit.none,
                        width: 24,
                      ),
                    )
                  : SvgPicture.asset(
                      "assets/bottom_icons/shopping_cart.svg",
                      // ignore: deprecated_member_use
                      color: const Color(0xffCCD1F3),
                      width: 25,
                      height: 25,
                    )),
          BottomNavigationBarItem(
              label: 'Home',
              icon: _currentIndex == 1
                  ? Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Colors.blue),
                          color: const Color(0xff1EC2FF)),
                      child: SvgPicture.asset(
                        "assets/bottom_icons/question.svg",
                        // ignore: deprecated_member_use
                        color: _currentIndex == 1
                            ? Colors.white
                            : const Color(0xffCCD1F3),
                        fit: BoxFit.none,
                        width: 24,
                      ),
                    )
                  : SvgPicture.asset(
                      "assets/bottom_icons/question.svg",
                      // ignore: deprecated_member_use
                      color: const Color(0xffCCD1F3),
                      width: 25,
                      height: 25,
                    )),
          BottomNavigationBarItem(
              label: 'Settings',
              icon: _currentIndex == 2
                  ? Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Colors.blue),
                          color: const Color(0xff1EC2FF)),
                      child: SvgPicture.asset(
                        "assets/bottom_icons/settings.svg",
                        // ignore: deprecated_member_use
                        color: _currentIndex == 2
                            ? Colors.white
                            : const Color(0xffCCD1F3),
                        fit: BoxFit.none,
                        width: 24,
                      ),
                    )
                  : SvgPicture.asset(
                      "assets/bottom_icons/settings.svg",
                      // ignore: deprecated_member_use
                      color: const Color(0xffCCD1F3),
                      width: 25,
                      height: 25,
                    )),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xffCCD1F3),
        onTap: _onTabTapped,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }
}
