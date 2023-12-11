import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  double _value = 0;
  late final SliderThemeData sliderTheme;
  @override
  Widget build(BuildContext context) {
    final SliderThemeData sliderTheme;
    Color getColor() {
      if (_value < 60) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(59, 58, 246, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.blue.shade700,
      //   automaticallyImplyLeading: false,
      //   leading: SizedBox(
      //     child: DecoratedBox(
      //       decoration: BoxDecoration(
      //         shape: BoxShape.rectangle,
      //         border: Border.all(
      //             width: 30, style: BorderStyle.solid, color: Colors.blue),
      //         borderRadius: const BorderRadius.all(
      //           Radius.circular(30),
      //         ),
      //       ),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.arrow_back_ios,
      //               color: Colors.white,
      //               size: 20,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Container(
          margin: const EdgeInsets.only(left: 18),
          child: IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
            onPressed: () {},
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.lightBlue.shade400),
        ),
        title: Text('Game',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
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
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/1.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Slider(
            divisions: null,
            autofocus: false,
            thumbColor: Colors.red.withOpacity(0.1),
            value: _value,
            min: 0,
            max: 100, // предполагается, что это максимальное значение времени
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            activeColor:
                getColor(), // меняем цвет слайдера в зависимости от времени
            inactiveColor: Colors.green,
            // sliderTheme: const SliderThemeData(
            //     trackShape: RectangularSliderTrackShape(),
            //     trackHeight: 16, // увеличение толщины трека
            //     thumbShape: RoundSliderThumbShape(
            //       enabledThumbRadius:
            //           12, // устанавливаем радиус круглого ползунка
            //       // устанавливаем радиус круглого ползунка
            // )),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/2.png"),
              const Text(
                "Question 1/ 10",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(114, 244, 252, 1),
                ),
              ),
            ],
          ),
          Text(
              "Who holds the record for the most goals scored in World Cup history?")
        ],
      ),
    );
  }
}
