import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tonal_challenge/formMetric.dart';
import 'package:tonal_challenge/styles.dart';
import 'styles.dart' as styles;

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Tonal Mobile Coding Challenge',style: TextStyle(color: Color.fromRGBO(50, 75, 75, 1)),),
          backgroundColor: Color.fromRGBO(50, 203, 204, 1),
        ),
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
  double diameter = styles.bubbleDiameter.toDouble();
  var stringValue = "John LeBron";
  int intWeight = 182;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // stringValue = stringController.text;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: ListOfWidget.metricsWidget
      ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Color.fromRGBO(50, 203, 204, 1),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FormMetric()));
          },
        ),
      );
  }
}
class ListOfWidget{
  ListOfWidget._();
  static List<Widget> metricsWidget = [];
}


