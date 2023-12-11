import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class SliderDemo extends StatefulWidget {
//   @override
//   _SliderDemoState createState() => _SliderDemoState();
// }

// class _SliderDemoState extends State {
//   double _currentValue = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 15,
//           width: double.infinity,
//           color: Colors.green,
//           child: Stack(
//             children: [
//               Container(
//                 height: 20,
//                 width: _currentValue,
//                 color: Colors.red,
//               ),
//               GestureDetector(
//                 onPanUpdate: (details) {
//                   setState(
//                     () {
//                       _currentValue =
//                           details.localPosition.dx.clamp(0.0, double.infinity);
//                     },
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//2вариант
// class SliderDemo extends StatefulWidget {
//   @override
//   _SliderDemoState createState() => _SliderDemoState();
// }

// class _SliderDemoState extends State with TickerProviderStateMixin {
//   double _currentValue = 50;
//   bool _isGreen = true;

//   @override
//   void initState() {
//     super.initState();
// // создаем таймер, который будет менять цвет ползунка каждые 40 и 60 секунд
//     Timer.periodic(Duration(seconds: 60), (Timer timer) {
//       setState(() {
//         _isGreen = !_isGreen;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 10,
//           width: double.infinity,
//           color: Colors.green,
//           child: Stack(
//             children: [
//               Container(
//                 height: 10,
//                 width: _currentValue,
//                 color: _isGreen
//                     ? Colors.red
//                     : Colors.green, // меняем цвет в зависимости от _isGreen
//               ),
//               GestureDetector(
//                 onPanUpdate: (details) {
//                   setState(() {
//                     _currentValue =
//                         details.localPosition.dx.clamp(0.0, double.infinity);
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State with TickerProviderStateMixin {
  double _currentTime = 0;
  double _totalTime = 60; // Время в секундах для обратного отсчета
  bool _isGreen = true; // Ползунок зеленый, когда идет ожидание

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        setState(
          () {
            if (_currentTime < _totalTime) {
              _currentTime++;
              _isGreen = true;
            } else {
              timer.cancel(); // Остановка таймера, если прошло нужное время
              _isGreen = false;
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 10,
          width: double.infinity,
          color: Colors.green,
          child: Stack(
            children: [
              Container(
                height: 10,
                width: (_currentTime / _totalTime) * 400,
                color: _isGreen ? Colors.green : Colors.red,
              ),
              GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    double newPosition =
                        details.localPosition.dx.clamp(0.0, double.infinity);
                    _currentTime = (newPosition / 400) * _totalTime;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
