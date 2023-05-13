import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:untitled/charts/data/similarChartData.dart';

// similar age chart (top right one)

class SimilarLineChart extends StatelessWidget {
  const SimilarLineChart({super.key});

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
            similarData // calls the similar age charts data and definitions
        ),
      ),
    );
  }
}