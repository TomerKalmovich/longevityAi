import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// data and definitions for the trend chart

LineChartData get trendData => LineChartData(
  lineTouchData: lineTouchData1,
  gridData: gridData,
  titlesData: titlesData1,
  borderData: borderData,
  lineBarsData: lineBarsData1,
  minX: 0,
  maxX: 5.5,
  minY: 0,
  maxY: 60,
);

LineTouchData get lineTouchData1 => LineTouchData(
  handleBuiltInTouches: true,
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
  reservedSize: 40,
  interval: 1,
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
    case 1:
      text = 'Feb 21';
      break;
    case 2:
      text = 'Apr 21';
      break;
    case 3:
      text = 'Oct 21';
      break;
    case 4:
      text = 'Apr22';
      break;
    case 5:
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
  interval: 1,
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
    FlSpot(1, 18),
    FlSpot(2, 12),
    FlSpot(2.7, 13),
    FlSpot(3.7, 17.9),
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
    FlSpot(3.7, 17.9),
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
    FlSpot(3.75, 17.9),
    FlSpot(4.8, 20),
    FlSpot(5.5, 21.5),
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
    FlSpot(3.75, 17.7),
    FlSpot(4.5, 14),
    FlSpot(4.8, 12.5),
    FlSpot(5.5, 11.8),
  ],
);