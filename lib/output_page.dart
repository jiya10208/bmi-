import 'package:bmi/constants.dart';
import 'package:bmi/expanded_card.dart';
import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  const OutputPage(this.bmi, this.interpretation, this.result, {super.key});

  final String bmi, interpretation, result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI calculator"),
      ),
      body: Container(
        color: const Color(0xff12111D),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Your result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                childContainer: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
                colour: kactiveCardColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const InputPage();
                }));
              },
              child: Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                color: kbottomContainerColor,
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kbottomContainerHeight,
                child: const Center(
                    child: Text(
                  "RE-CALCULATE",
                  style: kLargeButtonTextStyle,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
