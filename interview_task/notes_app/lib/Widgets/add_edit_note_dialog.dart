// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/services/notes_service.dart';
import 'package:notes_app/utils/colors.dart';
import 'package:notes_app/utils/validator.dart';

// ignore: must_be_immutable
class AddAndEditNoteDialog extends StatefulWidget {
  String title;
  String description;
  String noteType;
  Function() onSave;
  String id;

  AddAndEditNoteDialog(
      {super.key,
      required this.title,
      required this.description,
      required this.noteType,
      required this.onSave,
      required this.id});

  @override
  State<AddAndEditNoteDialog> createState() => _AddAndEditNoteDialogState();
}

class _AddAndEditNoteDialogState extends State<AddAndEditNoteDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController =
        TextEditingController(text: widget.title);
    TextEditingController descriptionController =
        TextEditingController(text: widget.description);
    var formKey = GlobalKey<FormState>();

    return Dialog(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black26,
                  )),
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) => Validator.validateString(value),
                    controller: titleController,
                    style: TextStyle(
                      color: ColorConstants.buttonColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.title.isEmpty ? 'Title here' : null,
                        enabledBorder: InputBorder.none),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: descriptionController,
                    validator: (value) => Validator.validateString(value),
                    maxLines: 4,
                    style: TextStyle(
                      color: ColorConstants.buttonColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: widget.description.isEmpty
                          ? 'Description here'
                          : null,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                if (formKey.currentState?.validate() ?? false) {
                  String response = '';
                  if (widget.title.isNotEmpty &&
                      widget.description.isNotEmpty) {
                    Note note = Note(
                        title: titleController.text,
                        description: descriptionController.text,
                        id: widget.id);
                    response =
                        await FireBaseManager.editNote(note, widget.noteType);
                  } else {
                    Note note = Note(
                      title: titleController.text,
                      description: descriptionController.text,
                    );
                    response =
                        await FireBaseManager.addNote(note, widget.noteType);
                  }
                  if (response == 'success') {
                    debugPrint(
                        '=======note Added or Updated successflly===========================================');
                    Navigator.of(context).pop();
                  } else {
                    debugPrint(
                        '=====add note error==============================');
                  }
                }
              },
              splashColor: null,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                decoration: BoxDecoration(
                  color: ColorConstants.buttonColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Save',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
