import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Graphshape extends StatefulWidget {
  const Graphshape({super.key});

  @override
  State<Graphshape> createState() => _GraphState();
}

class _GraphState extends State<Graphshape> {
  @override
  Widget build(BuildContext context) {
    LineChartData _buildLineChartData() {
      return LineChartData(
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
                color: const Color.fromARGB(255, 224, 193, 203),
                strokeWidth: 1);
          },
          getDrawingVerticalLine: (value) {
            return FlLine(
                color: const Color.fromARGB(255, 201, 161, 174),
                strokeWidth: 1);
          },
        ),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                const style = TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12);
                switch (value.toInt()) {
                  case 0:
                    return Text('Jan', style: style);
                  case 1:
                    return Text('Feb', style: style);
                  case 2:
                    return Text('Mar', style: style);
                  case 3:
                    return Text('Apr', style: style);
                  case 4:
                    return Text('May', style: style);
                  case 5:
                    return Text('Jun', style: style);
                  case 6:
                    return Text('Jul', style: style);
                  default:
                    return Container();
                }
              },
              reservedSize: 30,
              interval: 2,
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.grey),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 1),
              FlSpot(1, 1.5),
              FlSpot(3, 3.4),
              FlSpot(4, 2),
              FlSpot(5, 2.2),
              FlSpot(6, 1.8),
            ],
            isCurved: true,
            color: const Color.fromARGB(255, 137, 69, 188),
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
                show: true,
                color:
                    const Color.fromARGB(255, 135, 33, 243).withOpacity(0.3)),
          ),
        ],
      );
    }

    return LineChart(_buildLineChartData());
  }
}
