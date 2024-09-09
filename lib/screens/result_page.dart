import 'package:bmi/components/button_button.dart';
import 'package:bmi/components/resuable_card.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/components/resuable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result Page'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15),
                child: Text(
                  'Your Result',
                  style: KTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCArd(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText!.toUpperCase(),
                      style: KResulttextstyle,
                    ),
                    Text(
                      bmiResult!.toUpperCase(),
                      style: KBMIstyle,
                    ),
                    Text(
                      'Normal bmi range',
                      style: KgraybodyTextstyle,
                    ),
                    Text(
                      '18,5-26kg/m2',
                      style: KBodyTextstyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                       interpretation!,
                        style: KBodyTextstyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottonButton(
              title: 'RE_CALCULATE',
              onTab: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
