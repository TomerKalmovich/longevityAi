import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/widgets/buttons.dart';
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
    return const Scaffold(
      /*appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: const <Widget>[
          RecentButton(),
          ExportButton()
        ],
      ),*/
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
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
            ),
          ),
          Expanded(
            flex: 7,
            child: Row(
                children: [
                  //left column, houses blood test results
                  Expanded(
                    flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: LeftCol(),
                      ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        //top and bottom right columns, houses the graphs
                        Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 30, 30),
                              child: TopRight(),
                            ),
                        ),
                        Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 30, 30),
                              child: BottomRight(),
                            ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}