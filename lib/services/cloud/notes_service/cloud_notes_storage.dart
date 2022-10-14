import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mynotes/services/cloud/notes_service/cloud_note.dart';
import 'package:mynotes/services/cloud/notes_service/cloud_storage_constants.dart';
import 'package:mynotes/services/cloud/notes_service/cloud_storage_exceptions.dart';

class NotesStorage {
  final notes = FirebaseFirestore.instance.collection('notes');
  static final NotesStorage _shared = NotesStorage._sharedInstance();
  NotesStorage._sharedInstance();
  factory NotesStorage() => _shared;

  Future<CloudNote> createNewNote({required String ownerUserId}) async {
    final document = await notes.add({
      ownerUserIdFieldName: ownerUserId,
      textFieldName: '',
    });
    final fetchedNote = await document.get();
    return CloudNote(
      documentId: fetchedNote.id,
      ownerUserId: ownerUserId,
      text: '',
    );
  }

  Stream<Iterable<CloudNote>> allNotes({required String ownerUserId}) {
    final allNotes = notes
        .where(ownerUserIdFieldName, isEqualTo: ownerUserId)
        .snapshots()
        .map((event) => event.docs.map((doc) => CloudNote.fromSnapShot(doc)));
    return allNotes;
  }

  Future<void> updateNote({
    required String documentId,
    required String text,
  }) async {
    try {
      await notes.doc(documentId).update({textFieldName: text});
    } catch (_) {
      throw CouldNotUpdateNoteException();
    }
  }

  Future<void> deleteNote({required String documentId}) async {
    try {
      await notes.doc(documentId).delete();
    } catch (_) {
      throw CouldNotDeleteNoteException();
    }
  }

  Future<CloudNote> getNoteFromId({required dynamic noteId}) async {
    final noteDocSnapshot = await notes.doc(noteId).get();
    return CloudNote.fromSnapShot(noteDocSnapshot);
  }
}