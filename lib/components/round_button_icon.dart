
import 'package:flutter/material.dart';

class RountIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onpress;
  RountIconButton({required this.icon, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        elevation: 6,
        fillColor: Colors.blueGrey,
        shape: CircleBorder(),
        onPressed: onpress);
  }
}
