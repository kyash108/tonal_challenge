import 'package:flutter/material.dart';

class FormMetric extends StatefulWidget {

  @override
  State<FormMetric> createState() => _FormMetricState();
}
class _FormMetricState extends State<FormMetric> {
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
                // controller: incomeController,
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
                // controller: incomeController,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // InsertMethod();
                  });
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => Navigation(),
                  //     ));
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