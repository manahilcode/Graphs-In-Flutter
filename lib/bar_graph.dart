import 'package:dashboard_app/bar_data.dart';
import 'package:dashboard_app/graph_firstscreen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;

  const MyBarGraph({
    super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tuesAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBarData.initilizeBarData();

    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 10,
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: false,
          checkToShowHorizontalLine: (value) => true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey.withOpacity(0.4),
              strokeWidth: 1,
            );
          },
        ),
        borderData: FlBorderData(
          show: true,
          border: Border(
            top: BorderSide.none, // Remove top border
            left: BorderSide.none, // Remove left border
            right: BorderSide(color: Colors.grey, width: 3),
            bottom: BorderSide(color: Colors.grey, width: 3),
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                if (value % 10 == 0 && value != 0) { // Show titles only for multiples of 10 and exclude 0
                  return Text(
                    value.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  );
                } else {
                  return Container(); // Hide titles for other values
                }
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(
                  value.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                );
              },
            ),
          ),
        ),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
            x: data.x,
            barRods: [
              BarChartRodData(
                toY: data.y,
                color: data.color,
                width: 15,
                borderRadius: BorderRadius.zero,
              ),
            ],
          ),
        )
            .toList(),
      ),
    );
  }
}
