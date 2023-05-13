import 'package:flutter/material.dart';

// tile / expansionTile widgets

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ExpansionTile(
          leading: FlutterLogo(size: 40),
          title: Text('Blood Results'),
          subtitle: Text('Logging time - Apr 20'),
          children: <Widget>[
            ListTile(
              title: Text('Alanine Aminotransferase (ALT)'),
              subtitle: Text('I could not find bullet chart to fit here...'),
            ),
            ListTile(
              title: Text('Alkaline Phosphatase'),
              subtitle: Text('I could not find bullet chart to fit here...'),
            ),
            ],
        ),
        ExpansionTile(
          leading: const FlutterLogo(size: 40),
          title: const Text('Blood Results'),
          subtitle: const Text('Logging time - Oct 21'),
          children: const <Widget>[
            ListTile(
                title: Text('Alanine Aminotransferase (ALT)'),
              subtitle: Text('I could not find bullet chart to fit here...'),
            ),
            ListTile(
              title: Text('Alkaline Phosphatase'),
              subtitle: Text('I could not find bullet chart to fit here...'),
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        ),
      ],
    );
  }
}
