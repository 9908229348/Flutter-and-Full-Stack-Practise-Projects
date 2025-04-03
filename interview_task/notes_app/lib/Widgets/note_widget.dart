// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:notes_app/utils/colors.dart';

// ignore: must_be_immutable
class NoteWidget extends StatelessWidget {
  String title;
  String description;
  Function() onEditTap;
  Function() onDeleteTap;

  NoteWidget({
    super.key,
    required this.title,
    required this.description,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0x00000021),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: ColorConstants.buttonColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  maxLines: 3,
                  style: TextStyle(
                    color: Color(0xff808080),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: onEditTap,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorConstants.buttonColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.edit_outlined,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: onDeleteTap,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.delete_outlined,
                    color: Colors.red,
                    size: 18,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
