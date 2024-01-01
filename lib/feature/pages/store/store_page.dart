import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<String> textsStore = [
    'Purple \ngradient',
    'Ethereal \nspecies',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
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
              return Stack(
                children: [
                  Image.asset(
                    'assets/png_images/Vector.png',
                    color: Colors.blue,
                  ),
                  ListTile(
                    tileColor: const Color(0xFF2E6CE3),
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                            'assets/png_images/backgroundImage.png')),
                    title: const Text(
                      'Purple \ngradient',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 112,
                      height: 48,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(56),
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFF93ED38), Color(0xFF27D550)],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Free',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
                  height: 5,
                ),
            itemCount: 10),
      ),
    );
  }
}
