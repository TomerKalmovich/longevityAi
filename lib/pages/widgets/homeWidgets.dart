
import 'package:flutter/material.dart';
import 'package:untitled/charts/ageChart.dart';
import 'package:untitled/charts/similarChart.dart';
import 'package:untitled/charts/trendChart.dart';
import 'package:untitled/pages/widgets/tileWidgets.dart';
// main widgets - mainly defining the rows/columns that house the graphs/blood test results

//left column
class LeftCol extends StatelessWidget {
  const LeftCol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.all(20),
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
    return const Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: AgeLineChart(),
              //child: Text('graph l'),
            ),
            Flexible(
              flex: 1,
              child: SimilarLineChart(),
              //child: Text('graph r'),
            )
          ],
        ),
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
    return const Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              //child: Text('graph'),
              child: TrendLineChart(),
            ),
          )
        ],
      ),
    );
  }
}