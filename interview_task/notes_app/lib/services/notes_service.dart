import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes_app/models/note.dart';

class FireBaseManager {
  static final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  static Future<List<Note>> fetchNotes(String notesType) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    var uid = auth.currentUser?.uid;
    Query<Map<String, dynamic>> ref;

    ref = _fireStore.collection("users").doc(uid).collection(notesType);

    QuerySnapshot snapShot = await ref.get();
    final allData = snapShot.docs
        .map((doc) => Note.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return allData;
  }

  static Future<String> addNote(Note note, String noteType) async {
    print('=====note====${note.title}======================================');
    final FirebaseAuth auth = FirebaseAuth.instance;
    var uid = auth.currentUser?.uid;
    DocumentReference documentReference =
        _fireStore.collection("users").doc(uid).collection(noteType).doc();
    note.id = documentReference.id;
    documentReference.set(note.toJson());
    return "success";
  }

  static Future<String> editNote(Note note, String noteType) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    var uid = auth.currentUser?.uid;
    DocumentReference reference = _fireStore
        .collection("users")
        .doc(uid)
        .collection(noteType)
        .doc(note.id);
    reference.update({'title': note.title, 'description': note.description});
    return "success";
  }

  static String delete(Note note, String noteType) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    var uid = auth.currentUser?.uid;
    DocumentReference reference = _fireStore
        .collection("users")
        .doc(uid)
        .collection(noteType)
        .doc(note.id);
    reference.delete();
    return "success";
  }

  static String deleteAll() {
    final FirebaseAuth auth = FirebaseAuth.instance;
    var uid = auth.currentUser?.uid;
    DocumentReference reference = _fireStore.collection("users").doc(uid);
    reference.delete();
    return "success";
  }
}
