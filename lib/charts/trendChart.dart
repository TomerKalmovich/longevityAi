import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:untitled/charts/data/trendChartData.dart';
import 'package:untitled/pages/widgets/buttons.dart';

// trend line chart (the bottom one)

class TrendLineChart extends StatelessWidget {
  const TrendLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.15,
      child: Container(
        margin: const EdgeInsets.all(20),
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
                child: const Text('ALT Trend'),
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
                child: Row(
                  children: [
                    Flexible(
                      flex: 5,
                      child: LineChart(
                          trendData // calls the age charts data and definitions
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 1, color: Colors.black12)
                          )
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.topLeft,
                                child: const Text('Top Interventions')
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: const InterventionsButtons(name: Text('Swimming'),),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                              child: const InterventionsButtons(name: Text('Moderate carbs'),),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                              child: const InterventionsButtons(name: Text('Fish X2 a week'),),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}