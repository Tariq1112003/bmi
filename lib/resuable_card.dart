import 'package:flutter/cupertino.dart';

const ActiveCardcolor = Color(0xFF1D1E33);

class ReusableCArd extends StatelessWidget {
  final Color? color;
  final Widget? child;
  ReusableCArd({this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color ?? ActiveCardcolor,
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
