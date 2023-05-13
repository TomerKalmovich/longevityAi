import 'package:flutter/material.dart';
import 'data/ageChartData.dart';
import 'package:fl_chart/fl_chart.dart';

// age chart (top left one)

class AgeLineChart extends StatelessWidget {
  const AgeLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.5,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: LineChart(
          ageData // calls the age charts data and definitions
        ),
      ),
    );
  }
}