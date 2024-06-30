import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class piechart extends StatelessWidget {
  const piechart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020147),
      body: Center(
        child: PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(
                color: Colors.deepPurpleAccent,
                value: 40,
                title: '40%',
                radius: 50,
                titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              PieChartSectionData(
                color: Colors.red,
                value: 30,
                title: '30%',
                radius: 50,
                titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              PieChartSectionData(
                color: Colors.green,
                value: 15,
                title: '15%',
                radius: 50,
                titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              PieChartSectionData(
                color: Colors.yellow,
                value: 15,
                title: '15%',
                radius: 50,
                titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
            centerSpaceRadius: 40,
          ),
        ),
      ),
    );

  }
}
