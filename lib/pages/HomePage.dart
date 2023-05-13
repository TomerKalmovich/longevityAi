import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/widgets/homeWidgets.dart';

import '../main.dart';
// home page, sorts all the main widgets
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.widget,
  });

  final MyHomePage widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const Padding(
        padding: EdgeInsets.all(50),
        child: Row(
          children: [
            //left column, houses blood test results
            LeftCol(),
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  //top and bottom right columns, houses the graphs
                  TopRight(),
                  BottomRight()
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}