import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int? age;
  final int? height;
  final int? weight;

  Results({Key? key, required this.weight,required this.age,required this.height }) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xFF1D2136),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Normal',
                          style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        // SizedBox(height: 60,),
                        Text('${(weight!/((height!/100)*(height!/100))).round()}',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 60),
                        ),
                        // SizedBox(height: 60,),
                        Center(
                          child: Text(
                            'You have anormal body weight .\n                   Good job!',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        color: Colors.grey[600]),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.pink,
                child: MaterialButton(
                  height:70,
                    child: const Text(
                      'Re-CALCULATE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {Navigator.of(context).pop();}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
