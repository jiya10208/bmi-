import 'package:bmi/bmi_brain.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/expanded_card.dart';
import 'package:bmi/expanded_card_child.dart';
import 'package:bmi/output_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kinactiveCardColor;
  Color femaleCardColour = kinactiveCardColor;
  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      maleCardColour = maleCardColour == kinactiveCardColor
          ? kactiveCardColor
          : kinactiveCardColor;
    } else {
      femaleCardColour = femaleCardColour == kinactiveCardColor
          ? kactiveCardColor
          : kinactiveCardColor;
    }
  }

  int height = 100;
  int weight = 60;
  int age = 29;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMi Calculator",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    colour: maleCardColour,
                    childContainer: const ReusableCardChild(
                      childText: "Male",
                      childIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: femaleCardColour,
                    onPress: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    childContainer: const ReusableCardChild(
                      childText: "Female",
                      childIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kactiveCardColor,
              childContainer: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Height",
                    style: klabelTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        "cm",
                        style: klabelTextStyle,
                      )
                    ],
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: const Color(0xFFEB1555),
                          activeTrackColor: Colors.white,
                          thumbShape: const RoundSliderThumbShape(),
                          overlayColor: const Color(0x29EB1555),
                          overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 100,
                        max: 240,
                        // activeColor: const Color(0xFFEB1555),
                        // inactiveColor: const Color(0xFF8D8E98),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kactiveCardColor,
                  childContainer: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: klabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(FontAwesomeIcons.plus, () {
                            setState(() {
                              weight += 1;
                            });
                          }),
                          const SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            FontAwesomeIcons.minus,
                            () {
                              setState(() {
                                weight -= 1;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kactiveCardColor,
                  childContainer: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Age",
                        style: klabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(FontAwesomeIcons.plus, () {
                            setState(() {
                              age += 1;
                            });
                          }),
                          const SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            FontAwesomeIcons.minus,
                            () {
                              setState(() {
                                age -= 1;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              BmiBrain calc = BmiBrain(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OutputPage(
                    calc.geBmi(), calc.getInterpretation(), calc.getResult());
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
                "CALCULATE",
                style: kLargeButtonTextStyle,
              )),
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(this.icon, this.onpress, {super.key});
  final IconData icon;
  final onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: onpress,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
