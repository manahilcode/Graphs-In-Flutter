import 'dart:ui';
import 'package:dashboard_app/bar_graph.dart';
import 'package:dashboard_app/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class graph extends StatelessWidget {
  graph({Key? key}) : super(key: key);

  final List<double> weeklySummary = [
    4.40, 2.30, 42.24, 100.20, 66.99, 100.0, 88.90
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020147),
      appBar: AppBar(
        backgroundColor: Color(0xFF020147),
        title: Center(
          child: Text(
            "Data",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 25, left: 20, right: 20),
                  child: MyBarGraph(weeklySummary: weeklySummary),
                ),
              ),
              width: 350,
              height: 370,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white54, // Border color
                  width: 2.0, // Border width
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("PIE CHART",style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
          ),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.deepPurpleAccent,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Technology",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Banking",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.green,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Retail",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.yellowAccent,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Insurance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 250,
                child: piechart(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
