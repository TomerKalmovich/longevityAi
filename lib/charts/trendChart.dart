import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:untitled/charts/data/trendChartData.dart';

// trend line chart (the bottom one)

class TrendLineChart extends StatelessWidget {
  const TrendLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.15,
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
            trendData // calls the trend charts data and definitions
        ),
      ),
    );
  }
}