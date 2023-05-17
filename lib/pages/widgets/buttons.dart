import 'package:flutter/material.dart';

class RecentButton extends StatelessWidget {
  const RecentButton({
    super.key,
  });
   @override
   Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.transparent
          )
        ),
        onPressed: () {},
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Text('Recent'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Icon(Icons.history),
            ),
          ],
        ),

      ),
    );
  }
}

class ExportButton extends StatelessWidget {
  const ExportButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(
                color: Colors.transparent
            )
        ),
        onPressed: () {},
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
              child: Icon(Icons.upload_file),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Text('Export'),
            ),
          ],
        ),

      ),
    );
  }
}

// class for the interventions buttons
class InterventionsButtons extends StatelessWidget {
  const InterventionsButtons({
    required this.name,
    super.key,
  });

  final Text name; // text field in the button

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
          ),
          BoxShadow(
            color: Colors.black12,
          ),
        ]
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(
                color: Colors.transparent
            )
        ),
        onPressed: () {},
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
              child: Icon(Icons.arrow_downward),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: name,
            ),
          ],
        ),

      ),
    );
  }
}