
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class BottonButton extends StatelessWidget {

  final String? title;
  final VoidCallback? onTab;
  BottonButton({@required this.title, this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: Center(child: Text(title!,style: KLargebuttonstyle,)),
        color: KCountainerButtoncolor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: KCounterbuttonheight,
      ),
    );
  }
}