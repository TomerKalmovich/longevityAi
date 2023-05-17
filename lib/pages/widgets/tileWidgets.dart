import 'package:flutter/material.dart';

// tile / expansionTile widgets

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        ExpansionDetails(subTitleText: Text('Logging time - Apr 20'),),
        ExpansionDetails(subTitleText: Text('Logging time - Oct 21'),),
      ],
    );
  }
}

class ExpansionDetails extends StatelessWidget {
  const ExpansionDetails({
    super.key,
    required this.subTitleText,
  });
  final Text subTitleText;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: const FlutterLogo(size: 40),
      title: const Text('Blood Results'),
      subtitle: subTitleText,
      collapsedShape: const Border(
        bottom: BorderSide(color: Colors.black12, width: 1)
      ),
      shape: Border.all(color: Colors.transparent),
      children: const <Widget>[
        ListTile(
          shape: Border(
            //top: BorderSide(width: 1, color: Colors.black12),
            bottom: BorderSide(width: 1, color: Colors.black12)
          ),
          title: Text('Alanine Aminotransferase (ALT)'),
          subtitle: Text('I could not find bullet chart to fit here...'),
        ),
        ListTile(
          shape: Border(
              //top: BorderSide(width: 1, color: Colors.black12),
            bottom: BorderSide(width: 1, color: Colors.black12)
          ),
          title: Text('Alkaline Phosphatase'),
          subtitle: Text('I could not find bullet chart to fit here...'),
        ),
        ],
    );
  }
}
