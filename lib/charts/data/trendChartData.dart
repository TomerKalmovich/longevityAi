import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// data and definitions for the trend chart

LineChartData get trendData => LineChartData(
  lineTouchData: lineTouchData,
  gridData: gridData,
  titlesData: titlesData1,
  borderData: borderData,
  lineBarsData: lineBarsData1,
  minX: 0,
  maxX: 55,
  minY: -5,
  maxY: 65,
);

LineTouchData get lineTouchData => LineTouchData(
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
  reservedSize: 20,
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
      text = 'Oct 20';
      break;
    case 10:
      text = 'Feb 21';
      break;
    case 20:
      text = 'Apr 21';
      break;
    case 30:
      text = 'Oct 21';
      break;
    case 40:
      text = 'Apr22';
      break;
    case 50:
      text = 'Future';
      break;

    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.center);
}

SideTitles leftTitles() => SideTitles(
  getTitlesWidget: leftTitleWidgets,
  showTitles: true,
  reservedSize: 25,
);

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.black26,
    fontSize: 12,
  );
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0';
      break;
    case 10:
      text = '10';
      break;
    case 20:
      text = '20';
      break;
    case 30:
      text = '30';
      break;
    case 40:
      text = '40';
      break;
    case 50:
      text = '50';
      break;
    case 60:
      text = '60';
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
  lineChartBarData1_3,
  lineChartBarData1_4,
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
    FlSpot(0, 15),
    FlSpot(10, 18),
    FlSpot(20, 12),
    FlSpot(27, 13),
    FlSpot(37, 17.9),
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
    FlSpot(37, 17.9),
  ],
);

LineChartBarData get lineChartBarData1_3 => LineChartBarData(
  isCurved: true,
  curveSmoothness: 0.45,
  barWidth: 4,
  dashArray: [5,10],
  color: Colors.black12,
  isStrokeCapRound: true,
  dotData: FlDotData(show: false),

  belowBarData: BarAreaData(show: false),
  spots: const [
    FlSpot(37.5, 17.9),
    FlSpot(48, 20),
    FlSpot(55, 21.5),
  ],
);

LineChartBarData get lineChartBarData1_4 => LineChartBarData(
  isCurved: true,
  curveSmoothness: 0.45,
  barWidth: 4,
  dashArray: [5,10],
  color: const Color.fromRGBO(164, 223, 168, 100),
  isStrokeCapRound: true,
  dotData: FlDotData(show: false),

  belowBarData: BarAreaData(
    show: false,
  ),
  spots: const [
    FlSpot(37.5, 17.7),
    FlSpot(45, 14),
    FlSpot(48, 12.5),
    FlSpot(55, 11.8),
  ],
);