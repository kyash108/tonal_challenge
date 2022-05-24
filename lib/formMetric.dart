import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tonal_challenge/main.dart';
import 'package:tonal_challenge/styles.dart';
import 'main.dart' as main;
import 'styles.dart' as styles;
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class FormMetric extends StatefulWidget {

  @override
  State<FormMetric> createState() => _FormMetricState();
}
class _FormMetricState extends State<FormMetric> {

  //diameter for the bubble
  double diameter = styles.bubbleDiameter.toDouble();
  //text editing controller to handle to text
  TextEditingController labelController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  //default info for the bubble
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
          child:
              //column to display to form inputs
          Column(
            children: [
              //title
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
              //label textfield
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Eg. Upper Body",
                ),
                controller: labelController,
              ),
              //title
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
              //weight textfield
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Eg. 149",
                ),
                keyboardType: TextInputType.number,
                controller: weightController,
              ),
              //button to add information to the list and redirect the user.
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    ListOfWidget.metricsWidget.add(
                      Stack(
                        children: <Widget>[
                          //container for the background
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: bubbleBoxDecoration,
                            height: diameter,
                          ),
                          //container for the label text
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                              alignment: Alignment.center,
                              child: Text(
                                labelController.text,
                                style: labelTextStyle,
                              )
                          ),
                          //container for the weight
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                              alignment: Alignment.center,
                              child: Text(
                                weightController.text,
                                style: weightTextStyle,
                              )
                          ),
                          //container for the weight units
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
                    labelController.clear();
                    weightController.clear();
                    //snackbar to show message when widget is created
                    final snackBar = SnackBar(content: Text("New widget created."),backgroundColor: Colors.green,);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    //redirecting using to main page.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));

                  });
                },
                //button design information
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