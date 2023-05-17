import 'package:flutter/material.dart';
import 'package:untitled/charts/ageChart.dart';
import 'package:untitled/charts/similarChart.dart';
import 'package:untitled/charts/trendChart.dart';
import 'package:untitled/pages/widgets/tileWidgets.dart';
import 'buttons.dart';
// main widgets - mainly defining the rows/columns that house the graphs/blood test results

//top ber with title and buttons
class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                    child: Text(
                      "Blood Test",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.black87
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      "John Smith - age : 45",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                          color: Colors.black87
                      ),
                    ),
                  )
                ],
              ),
            )
        ),
        RecentButton(),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 30, 0),
          child: ExportButton(),
        ),
      ],
    );
  }
}

//left column
class LeftCol extends StatelessWidget {
  const LeftCol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black12,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child:  const Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              //child: Text('results'),
              child: ExpansionTileWidget(),
            ),
          )

        ],
      ),
    );
  }
}
//top right, houses the 2 top graphs
class TopRight extends StatelessWidget {
  const TopRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: AgeLineChart(),
            ),
            //child: Text('graph l'),
          ),
          Expanded(
            flex: 1,
            child: SimilarLineChart(),
            //child: Text('graph r'),
          )
        ],
      ),
    );
  }
}

//houses the bottom graph
class BottomRight extends StatelessWidget {
  const BottomRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: TrendLineChart(),
        )
      ],
    );
  }
}