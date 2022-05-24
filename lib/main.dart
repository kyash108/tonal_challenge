import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tonal_challenge/formMetric.dart';
import 'package:tonal_challenge/styles.dart';
import 'styles.dart' as styles;
import 'package:auto_reload/auto_reload.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyApp(),
      ),
    ),
  );
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Diameter for the bubble widget
  double diameter = styles.bubbleDiameter.toDouble();
  //Default data for the widget
  var stringValue = "John LeBron";
  int intWeight = 182;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Tonal Mobile Coding Challenge',style: TextStyle(color: Color.fromRGBO(50, 75, 75, 1)),),
        backgroundColor: Color.fromRGBO(50, 203, 204, 1),
      ),
      //Generating list of the widgets created
      body: ListView(
        children: ListOfWidget.metricsWidget
      ),
        //floating action button to add a new entry
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Color.fromRGBO(50, 203, 204, 1),
          onPressed: () {
            //redirecting the user to the form
            Navigator.push(context, MaterialPageRoute(builder: (context) => FormMetric()));
          },
        ),
      );
  }
}
class ListOfWidget{
  ListOfWidget._();
  //empty list to store the widget information.
  static List<Widget> metricsWidget = [];
}


