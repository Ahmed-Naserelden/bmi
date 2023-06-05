// ignore_for_file: file_names, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;
  // const BMIResultScreen({Key? key}) : super(key: key);
  // ignore: use_key_in_widget_constructors
  BMIResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.keyboard_arrow_left,),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'Gender : ${isMale ? "Male" : "Female"}',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Result : ${result.round()}',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'age : $age',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
