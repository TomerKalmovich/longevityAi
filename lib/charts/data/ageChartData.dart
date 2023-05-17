import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// data snd definitions for the age chart

LineChartData get ageData => LineChartData(
  lineTouchData: lineTouchData1,
  gridData: gridData,
  titlesData: titlesData1,
  borderData: borderData,
  lineBarsData: lineBarsData1,
  minX: 20,
  maxX: 95,
  minY: 18,
  maxY: 34,
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
    case 70:
      text = '70';
      break;
    case 80:
      text = '80';
      break;
    case 90:
      text = '90';
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
    case 18:
      text = '18';
      break;
    case 20:
      text = '20';
      break;
    case 22:
      text = '22';
      break;
    case 24:
      text = '24';
      break;
    case 26:
      text = '26';
      break;
    case 28:
      text = '28';
      break;
    case 30:
      text = '30';
      break;
    case 32:
      text = '32';
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
    FlSpot(20, 27),
    FlSpot(25, 29),
    FlSpot(30, 32),
    FlSpot(40, 32),
    FlSpot(50, 31),
    FlSpot(70, 23),
    FlSpot(75, 21),
    FlSpot(82, 18.5),
    FlSpot(95, 19),
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
    FlSpot(82, 18.5),
  ],
);