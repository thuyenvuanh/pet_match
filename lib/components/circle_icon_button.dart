import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    this.color = Colors.white,
    required this.onPress,
    this.height,
    this.width,
  });

  final Icon icon;
  final Color? color;
  final Function() onPress;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 64,
      width: width ?? 64,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 0),
              spreadRadius: -19,
              blurRadius: 33,
              color: Color.fromRGBO(0, 0, 0, 1),
            )
          ]),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(100),
          onTap: onPress,
          child: icon,
        ),
      ),
    );
  }
}
