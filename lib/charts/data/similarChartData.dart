import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// data and definitions for the similar age chart

LineChartData get similarData => LineChartData(
  lineTouchData: lineTouchData1,
  gridData: gridData,
  titlesData: titlesData1,
  borderData: borderData,
  lineBarsData: lineBarsData1,
  minX: 0,
  maxX: 160,
  minY: -5,
  maxY: 40,
);

LineTouchData get lineTouchData1 => LineTouchData(
  handleBuiltInTouches: false,
  touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: Colors.white,
      tooltipRoundedRadius: 8,

      tooltipBorder: const BorderSide(
          width: 0.2,
          color: Colors.grey
      )
  ),
);

FlGridData get gridData => FlGridData(
  drawVerticalLine: false,
  getDrawingHorizontalLine: (value) {
    return FlLine(
        color: Colors.black26,
        strokeWidth: 1
    );
  },
);

FlTitlesData get titlesData1 => FlTitlesData(
  bottomTitles: AxisTitles(
    sideTitles: bottomTitles,
  ),
  rightTitles: AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
  topTitles: AxisTitles(
    sideTitles: SideTitles(showTitles: false),
  ),
  leftTitles: AxisTitles(
    sideTitles: leftTitles(),
  ),
);

SideTitles get bottomTitles => SideTitles(
  showTitles: true,
  reservedSize: 25,
  getTitlesWidget: bottomTitleWidgets,
);

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.black45,
    fontSize: 12,
  );
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0';
      break;
    case 25:
      text = '25';
      break;
    case 50:
      text = '50';
      break;
    case 75:
      text = '75';
      break;
    case 100:
      text = '100';
      break;
    case 125:
      text = '125';
      break;
    case 150:
      text = '150';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.center);
}

SideTitles leftTitles() => SideTitles(
  getTitlesWidget: leftTitleWidgets,
  showTitles: true,
  reservedSize: 40,
);

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.black26,
    fontSize: 12,
  );
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0.000';
      break;
    case 5:
      text = '0.005';
      break;
    case 10:
      text = '0.010';
      break;
    case 15:
      text = '0.015';
      break;
    case 20:
      text = '0.020';
      break;
    case 25:
      text = '0.025';
      break;
    case 30:
      text = '0.030';
      break;
    case 35:
      text = '0.035';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.center);
}

FlBorderData get borderData => FlBorderData(
  show: false,
  border: const Border(
    bottom: BorderSide(color: Colors.black12),
    left: BorderSide(color: Colors.black12),
    right: BorderSide(color: Colors.black12),
    top: BorderSide(color: Colors.black12),
  ),
);

List<LineChartBarData> get lineBarsData1 => [
  lineChartBarData1_1,
  lineChartBarData1_2,
];

LineChartBarData get lineChartBarData1_1 => LineChartBarData(
  isCurved: true,
  curveSmoothness: 0.45,
  barWidth: 4,
  color: const Color.fromRGBO(164, 223, 168, 100),
  isStrokeCapRound: true,
  dotData: FlDotData(show: false),

  belowBarData: BarAreaData(show: false),
  spots: const [
    FlSpot(0, 0),
    FlSpot(10, 2),
    FlSpot(33, 36),
    FlSpot(55, 20),
    FlSpot(70, 2),
    FlSpot(90, 2),
    FlSpot(125, -1),
    FlSpot(160,-2),
  ],
);
LineChartBarData get lineChartBarData1_2 => LineChartBarData(
  isStrokeCapRound: true,
  dotData: FlDotData(show: true),
  color: Colors.grey,
  belowBarData: BarAreaData(
    show: false,
  ),
  spots: const [
    FlSpot(20, 20),
  ],
);