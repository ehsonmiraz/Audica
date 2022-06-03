import 'package:audica/models/profile.dart';
import 'package:audica/models/theaudio.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {

  final CollectionReference audiodata = Firestore.instance.collection('audios');

  List <AudioModel> _audiodataFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return AudioModel(
        name: doc.data['name'] ?? '',
        tags: doc.data['tags'] ?? '',
        composer: doc.data['composer'] ?? '',
        uid:  doc.documentID ?? '',


      );
    }).toList();
  }

  Stream<List<AudioModel>> get audio {
    return audiodata.snapshots().map(_audiodataFromSnapshot);
  }

}
