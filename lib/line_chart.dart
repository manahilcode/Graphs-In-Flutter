import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class linechart extends StatefulWidget {
  const linechart({Key? key}) : super(key: key);

  @override
  State<linechart> createState() => _linechartState();
}

class _linechartState extends State<linechart> {
  @override
  Widget build(BuildContext context) {
    return LineChart(
        LineChartData(
          backgroundColor: Colors.white, // Background color of the chart
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.black38
                    .withOpacity(0.2),
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: Colors.black38.withOpacity(0.2),
                strokeWidth: 1,
              );
            },
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toString(),
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  );
                },
                reservedSize: 40,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toString(),
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  );
                },
                reservedSize: 40,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.white.withOpacity(0.5)),
          ),
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(1, 1),
                FlSpot(2, 4),
                FlSpot(3, 2),
                FlSpot(4, 5),
                FlSpot(5, 3),
                FlSpot(6, 4),
              ],
              isCurved: true,
              color: Color(0xFF020147),
              barWidth: 7,
              isStrokeCapRound: true,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.green,
              ),
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 4,
                    color: Colors.red,
                    strokeWidth: 2,
                    strokeColor: Colors.black,
                  );
                },
              ),
            ),
          ],
        ),
    );
  }
}
