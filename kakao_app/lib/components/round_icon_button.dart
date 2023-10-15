import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icons;
  const RoundIconButton({
    super.key,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: Icon(
        icons,
        size: 17,
        color: Colors.white,
      ),
    );
  }
}
