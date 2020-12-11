import 'package:bmi_calculator/widgets/card.dart';
import 'package:flutter/material.dart';

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
                    child: RebuildCard(),
                  ),
                  Expanded(
                    child: RebuildCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RebuildCard(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RebuildCard(),
                  ),
                  Expanded(
                    child: RebuildCard(),
                  ),
                ],
              ),
            ),
          ],
        )
      );
  }
}
