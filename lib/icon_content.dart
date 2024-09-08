import 'package:flutter/cupertino.dart';

class icon_cotent extends StatelessWidget {
  final IconData? icon;
  final String? label;

  icon_cotent({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon
            //  Icons.female, size: 80,
            //FontAwesomeIcons.mars,size: 80,
            ),
        SizedBox(
          height: 15,
        ),
        Text(
          label!,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
