import 'package:bmi_calculator/widgets/card.dart';
import 'package:flutter/material.dart';

const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 70.0;
const cardColor = Color(0xFF1D1E33);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RebuildCard(
                      colour: cardColor,
                    ),
                  ),
                  Expanded(
                    child: RebuildCard(
                      colour: cardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RebuildCard(
                colour: cardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RebuildCard(
                      colour: cardColor,
                    ),
                  ),
                  Expanded(
                    child: RebuildCard(
                      colour: cardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              color: bottomContainerColor,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
