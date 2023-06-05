// ignore: file_names
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, avoid_print, curly_braces_in_flow_control_structures

import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/bmiResultScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _height = 120.0;
  int _age = 1, _weight = 2;
  bool _isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "BMI Calculator",
          textAlign: TextAlign.center,
        )),
      ),
      body: Column(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isMale = true;
                          // _color = Colors.blue;
                          // _isMale != _isMale;
                          // _color =(_isMale ?Colors.blue : Colors.grey[400]);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(
                            //   Icons.male_rounded,
                            //   size: 70,
                            // ),
                            Image(
                              height: 90.0,
                              width: 90.0,
                              image: AssetImage('images/male.png'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // _isMale != _isMale;
                          _isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: _isMale ? Colors.grey[400] : Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(
                            //   Icons.female_rounded,
                            //   size: 70,
                            // ),
                            Image(
                              height: 90.0,
                              width: 90.0,
                              image: AssetImage('images/female.png'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          _height.toStringAsFixed(0),
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Slider(
                        value: _height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            _height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "$_weight",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "weight--",
                              onPressed: () {
                                setState(() {
                                  if (_weight > 2) _weight--;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              heroTag: "weight++",
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          '$_age',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                            heroTag: "age--",
                              onPressed: () {
                                setState(() {
                                  if (_age > 1) _age--;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              heroTag: "age++",
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              height: 50.0,
              onPressed: () {
                double result = _weight / pow(_height / 100, 2);
                // print("Result :-> ${result.round()}");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(result: result, age: _age, isMale: _isMale,),
                  )
                );
              },
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
