import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('Show Dialog'),
      onTap: () async {
        await _showDialog(context);
      },
    );
  }

  _showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'This is Dialog box',
            ),
            actions: [
              InkWell(
                child: Text("Close"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
