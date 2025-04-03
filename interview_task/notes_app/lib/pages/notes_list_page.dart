import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/add_edit_note_dialog.dart';
import 'package:notes_app/Widgets/note_widget.dart';
import 'package:notes_app/Widgets/tab_widget.dart';
import 'package:notes_app/utils/assets.dart';
import 'package:notes_app/utils/colors.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/services/auth_services.dart';
import 'package:notes_app/services/notes_service.dart';
import 'package:notes_app/services/shared_preference.dart';

class NotesListPage extends StatefulWidget {
  const NotesListPage({super.key});

  @override
  State<NotesListPage> createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  List<Note> personalNotes = [];
  List<Note> workNotes = [];
  List<Note> shoppingNotes = [];
  List<Note> currentTabNotes = [];
  Tabs currentTab = Tabs.work;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    checkIfUserIsAlreadyLoggedIn();
  }

  checkIfUserIsAlreadyLoggedIn() async {
    setState(() {
      isLoading = true;
    });
    String? userId = await Preferences.getUserId();
    if (userId != null && userId.isNotEmpty) {
      personalNotes = await FireBaseManager.fetchNotes(Tabs.personal.name);
      workNotes = await FireBaseManager.fetchNotes(Tabs.work.name);
      shoppingNotes = await FireBaseManager.fetchNotes(Tabs.shopping.name);
      currentTabNotes = currentTab == Tabs.personal
          ? personalNotes
          : currentTab == Tabs.shopping
              ? shoppingNotes
              : workNotes;
    } else {
      String response = await AuthServices.signIn();
      if (response == 'success') {
        debugPrint(
            '===========authentication success================================');
      } else {
        debugPrint(
            '======authentication failure====$response=========================');
      }
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(screenHeight / 30),
                        bottomRight: Radius.circular(screenHeight / 30),
                      ),
                    ),
                    height: screenHeight / 4.97),
                SizedBox(
                  height: screenHeight / 1.4,
                  width: screenWidth,
                  child: Card(
                    elevation: 20.0,
                    margin: EdgeInsets.only(
                      top: screenHeight / 6,
                      left: screenHeight / 50,
                      right: screenHeight / 50,
                    ),
                    child: isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : currentTabNotes.isNotEmpty
                            ? ListView.builder(
                                itemCount: currentTabNotes.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  Note currentNote = currentTabNotes[index];
                                  return NoteWidget(
                                    title: currentNote.title,
                                    description: currentNote.description,
                                    onEditTap: () async {
                                      await showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AddAndEditNoteDialog(
                                                id: currentNote.id ?? '',
                                                title: currentNote.title,
                                                description:
                                                    currentNote.description,
                                                noteType: currentTab.name,
                                                onSave: () {
                                                  debugPrint(
                                                      '===============Saved successfully================================');
                                                });
                                          });
                                    },
                                    onDeleteTap: () async {
                                      await showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('Are you Sure ?'),
                                              content: Text(
                                                  'You want to delete this Note.'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text('Cancel')),
                                                TextButton(
                                                    onPressed: () async {
                                                      String response =
                                                          await FireBaseManager
                                                              .delete(
                                                                  currentNote,
                                                                  currentTab
                                                                      .name);
                                                      if (response ==
                                                          'success') {
                                                        debugPrint(
                                                            'Deleted Successfully');
                                                      } else {
                                                        debugPrint(
                                                            'SomeThing went wrong in Deleting this Note');
                                                      }
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text('OK'))
                                              ],
                                            );
                                          });
                                    },
                                  );
                                })
                            : Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenHeight / 40,
                                  vertical: screenHeight / 20,
                                ),
                                child: Column(
                                  children: [
                                    Image(
                                      height: screenHeight / 3,
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        AssetImages.noDataImages,
                                      ),
                                    ),
                                    Text(
                                      'No Data',
                                      style: TextStyle(
                                        color: Color(0xff4B5D8D),
                                        fontSize: screenHeight / 30,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                  ),
                ),
                Positioned(
                  top: screenHeight / 16,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () async {
                            setState(() {
                              currentTab = Tabs.work;
                              isLoading = true;
                            });
                            currentTabNotes = await FireBaseManager.fetchNotes(
                                Tabs.work.name);
                            setState(() {
                              isLoading = false;
                            });
                          },
                          child: TabButton(
                            title: 'Work',
                            count: workNotes.length,
                            icon: Icons.work,
                            backgroundColor: currentTab == Tabs.work
                                ? Colors.white
                                : ColorConstants.primaryColor,
                            textColor: currentTab == Tabs.work
                                ? ColorConstants.activeTabTextColor
                                : Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            setState(() {
                              currentTab = Tabs.personal;
                              isLoading = true;
                            });
                            currentTabNotes = await FireBaseManager.fetchNotes(
                                Tabs.personal.name);
                            setState(() {
                              isLoading = false;
                            });
                          },
                          child: TabButton(
                            title: 'Personal',
                            count: personalNotes.length,
                            icon: Icons.shopping_bag_outlined,
                            backgroundColor: currentTab == Tabs.personal
                                ? Colors.white
                                : ColorConstants.primaryColor,
                            textColor: currentTab == Tabs.personal
                                ? ColorConstants.activeTabTextColor
                                : Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            setState(() {
                              currentTab = Tabs.shopping;
                              isLoading = true;
                            });
                            currentTabNotes = await FireBaseManager.fetchNotes(
                                Tabs.shopping.name);
                            setState(() {
                              isLoading = false;
                            });
                          },
                          child: TabButton(
                            title: 'Shopping',
                            count: shoppingNotes.length,
                            icon: Icons.shopping_bag_sharp,
                            backgroundColor: currentTab == Tabs.shopping
                                ? Colors.white
                                : ColorConstants.primaryColor,
                            textColor: currentTab == Tabs.shopping
                                ? ColorConstants.activeTabTextColor
                                : Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: screenWidth,
              margin: EdgeInsets.symmetric(
                horizontal: screenHeight / 20,
                vertical: screenHeight / 20,
              ),
              padding: EdgeInsets.symmetric(
                vertical: screenHeight / 40,
              ),
              decoration: BoxDecoration(
                color: ColorConstants.buttonColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Delete All?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return AddAndEditNoteDialog(
                    title: '',
                    description: '',
                    id: '',
                    noteType: currentTab.name,
                    onSave: () {
                      debugPrint(
                          '===============Saved successfully================================');
                    });
              });
        },
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: ColorConstants.buttonColor,
              borderRadius: BorderRadius.circular(50)),
          child: Icon(
            Icons.add,
            size: 42,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

enum Tabs {
  work,
  personal,
  shopping,
}
