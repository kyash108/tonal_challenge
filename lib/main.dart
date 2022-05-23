import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tonal_challenge/styles.dart';

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
  final TextEditingController stringController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  var stringValue = "John LeBron";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // stringValue = stringController.text;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: new Column(
                children: <Widget>[
                  SizedBox(height: 1,),
                  Center(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: bubbleBoxDecoration,
                          height: 272,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                            alignment: Alignment.center,
                            child: Text(
                              "$stringValue",
                              style: labelTextStyle,
                            )
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                            alignment: Alignment.center,
                            child: Text(
                              '45',
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
                        ),
                      ],
                    )
                  ),
                ]
            ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Color.fromRGBO(50, 203, 204, 1),
          onPressed: () {
            showDialogBox(context);
          },
        ),
      );
  }

  Future<void> showDialogBox(BuildContext context) async{
    return await showDialog(context: context,
    builder: (context){
      return StatefulBuilder(builder: (context,setState){
        return AlertDialog(
          content: Form(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Enter the name or body part.'),
              TextFormField(
                controller: stringController,
                decoration: InputDecoration(hintText: 'Enter string'),
              ),
              Text('Enter the Weight.'),
              TextFormField(
                controller: weightController,
                decoration: InputDecoration(hintText: 'Enter weight'),
              ),
            ],
          ),
          ),
          actions: <Widget>[
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            },
                child: Text('Submit'))
          ],
        );
      });
    }
    );
  }
}


