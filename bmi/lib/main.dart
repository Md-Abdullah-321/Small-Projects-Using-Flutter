import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var message = "";
  var bgColor = Colors.indigo[50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: bgColor,
      child: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMI Calculator",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 21,
              ),
              TextField(
                controller: wtController,
                decoration: const InputDecoration(
                  label: Text("Enter your Wight (in kgs)"),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: ftController,
                decoration: const InputDecoration(
                  label: Text("Enter your Height (in feet)"),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: inController,
                decoration: const InputDecoration(
                  label: Text("Enter your Height (in inches)"),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        left: 42, right: 42, top: 16, bottom: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();

                    if (wt != "" && ft != "" && inch != "") {
                      //BMI Calculation
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);

                      var tInch = iFt * 12 + iInch;
                      var tCm = tInch * 2.54;
                      var tM = tCm / 100;

                      var bmi = iWt / (tM * tM);
                      var msg;

                      if (bmi > 25) {
                        msg = "You're OverWeight!!";
                        bgColor = Colors.orange[200];
                      } else if (bmi < 18) {
                        msg = "You're underWeight!!";
                        bgColor = Colors.red[200];
                      } else {
                        msg = "You're Healthy!!";
                        bgColor = Colors.green[200];
                      }

                      setState(() {
                        message = msg;
                        result = "Your BMI is: ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the required blanks!!";
                      });
                    }
                  },
                  child: Text("Calculate")),
              SizedBox(
                height: 11,
              ),
              Text(
                message,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
              Text(
                result,
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
