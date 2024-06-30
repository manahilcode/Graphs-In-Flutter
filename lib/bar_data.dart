import 'package:dashboard_app/indivitual_Bar.dart';
import 'package:flutter/material.dart';

class BarData{
  final double sunAmount;
  final double monAmount;
  final double tuesAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  BarData(
  {
    required this.sunAmount,
    required this.monAmount,
    required this.tuesAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
});
List <IndividualBar> barData =[];
void initilizeBarData() {
  barData=[
  IndividualBar(x: 0, y:sunAmount, color: Colors.green),
    IndividualBar(x: 1, y:monAmount ,color: Colors.deepPurpleAccent),
    IndividualBar(x: 2, y:tuesAmount , color: Colors.green),
    IndividualBar(x: 3, y:wedAmount,color: Colors.deepPurpleAccent),
    IndividualBar(x: 4, y:thurAmount,color: Colors.green),
    IndividualBar(x: 5, y:friAmount,color: Colors.deepPurpleAccent),
    IndividualBar(x: 6, y:satAmount,color: Colors.green),
  ];
}

}