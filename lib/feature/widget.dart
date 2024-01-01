import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    this.icon,
    this.onTap,
  }) : super(key: key);
  final Widget? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 32,
        width: 32,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF20CAFF), Color(0xFF1290FF)],
            ),
          ),
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
