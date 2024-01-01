import 'package:betting_quiz_app/feature/pages/home/home_page.dart';
import 'package:betting_quiz_app/feature/pages/settings/setting_page.dart';
import 'package:betting_quiz_app/feature/pages/store/store_page.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentIndex = 0;
  List<String> textsAppBar = ['Store', 'Home', 'Settings'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2D7AE5),
        title: Text(
          textsAppBar[_currentIndex],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          SizedBox(
            width: 87,
            height: 40,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xFF2A4FC8),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 37,
                    child: Text(
                      '50',
                      style: TextStyle(
                        color: Color(0xFFF8F804),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFF8F804), Color(0xFFFBA802)],
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Icon(
                      Icons.star,
                      color: Color(0xffE97C01),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            StorePage(),
            HomePage(),
            SettingPage(),
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
