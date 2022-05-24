import 'package:flutter/material.dart';
import 'package:tonal_challenge/main.dart';
import 'package:tonal_challenge/styles.dart';
import 'main.dart' as main;
import 'styles.dart' as styles;

class FormMetric extends StatefulWidget {

  @override
  State<FormMetric> createState() => _FormMetricState();
}
class _FormMetricState extends State<FormMetric> {

  double diameter = styles.bubbleDiameter.toDouble();
  TextEditingController labelController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String stringValue = "John LeBron";
  int intWeight = 182;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new Widget",style: TextStyle(color: Color.fromRGBO(50, 75, 75, 1))),
        backgroundColor: Color.fromRGBO(50, 203, 204, 1.0),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "Enter the title for the widget (Eg. Upper Body)",
                    style: TextStyle(fontSize: 18),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Eg. Upper Body",
                ),
                controller: labelController,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "Enter the weight in lbs",
                    style: TextStyle(fontSize: 18),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Eg. 149",
                ),
                keyboardType: TextInputType.number,
                controller: weightController,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    ListOfWidget.metricsWidget.add(
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: bubbleBoxDecoration,
                            height: diameter,
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                              alignment: Alignment.center,
                              child: Text(
                                labelController.text,
                                style: labelTextStyle,
                              )
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                              alignment: Alignment.center,
                              child: Text(
                                weightController.text,
                                style: weightTextStyle,
                              )
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                              alignment: Alignment.center,
                              child: Text(
                                'lbs',
                                style: unitTextStyle,
                              )
                          )
                        ],
                      ),
                    );
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  });
                },
                child: Text('Submit'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(50, 203, 204, 1.0)),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white))),
              )
            ],
          ),
        ),

      ),
    );
  }

}