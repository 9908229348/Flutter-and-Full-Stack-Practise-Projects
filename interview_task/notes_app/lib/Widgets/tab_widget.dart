// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabButton extends StatelessWidget {
  String title;
  IconData icon;
  Color backgroundColor;
  Color textColor;
  int count;

  // ignore: use_super_parameters
  TabButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: textColor,
          )),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: textColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 10,
                color: backgroundColor,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '$title - $count',
            style: TextStyle(
              color: textColor,
              fontSize: 7,
            ),
          )
        ],
      ),
    );
  }
}
