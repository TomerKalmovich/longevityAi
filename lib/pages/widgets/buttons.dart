import 'package:flutter/material.dart';

class RecentButton extends StatelessWidget {
  const RecentButton({
    super.key,
  });
   @override
   Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
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
              padding: EdgeInsets.all(4.0),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text('Recent'),
              ),
            ),
            Icon(Icons.history),
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
      margin: const EdgeInsets.fromLTRB(0, 0, 90, 0),
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
              padding: EdgeInsets.all(4.0),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text('Export'),
              ),
            ),
            Icon(Icons.upload_file),
          ],
        ),

      ),
    );
  }
}