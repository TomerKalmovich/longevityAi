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
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: const Text('ALT of Similar People'),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.black12)
                    )
                ),
                child: LineChart(
                    similarData // calls the age charts data and definitions
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}