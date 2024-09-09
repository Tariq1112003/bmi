import 'package:bmi/constants.dart';
import 'package:flutter/cupertino.dart';


class ReusableCArd extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final  VoidCallback? onPress;
  ReusableCArd({this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: child,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color ?? KActiveCardcolor,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}











