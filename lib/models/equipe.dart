import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

class Equipe extends ChangeNotifier {

  Equipe({this.deleted = false}){
    images = [];
    score1 = 0;
    score2 = 0;
    score3 = 0;
    score = 0;
  }

  Equipe.fromDocument(DocumentSnapshot document){
    deleted = (document.data['deleted'] ?? false) as bool;
    id = document.documentID;
    name = document['name'] as String;
    score3 = document['score3'] as int;
    score2 = document['score2'] as int;
    score1 = document['score1'] as int;
    score = document['score'] as int;
    nivel = document['nivel'] as String;
    description = document['description'] as String;
    codigo = document['codigo'] as String;
    images = List<String>.from(document.data['images'] as List<dynamic>);

  }

  final Firestore firestore = Firestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  DocumentReference get firestoreRef => firestore.document('equipes/$id');
  StorageReference get storageRef => storage.ref().child('equipes').child(id);

  bool deleted;
  String id;
  String nivel;
  String name;
  int score1;
  int score;
  int score2;
  int score3;
  String description;
  String codigo;
  List<String> images;

  List<dynamic> newImages;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value){
    _loading = value;
    notifyListeners();
  }


  Future<void> save() async {

    loading = true;

    final Map<String, dynamic> data = {
      'name' :  name,
      'score3' : score3,
      'score2' : score2,
      'score1' : score1,
      'score' : score,
      'description' : description,
      'codigo' : codigo,
      'deleted': deleted

    };

    if (id ==null){
      final doc = await firestore.collection('equipes').add(data);
      id = doc.documentID;
    } else {
      await firestoreRef.updateData(data);
    }

    final List<String> updateImages = [];

    for (final newImage in newImages){
      if(images.contains(newImage)){
        updateImages.add(newImage as String);
      } else {
        final StorageUploadTask task = storageRef.child(Uuid().v1()).putFile(newImage as File);
        final StorageTaskSnapshot snapshot = await task.onComplete;
        final String url = await snapshot.ref.getDownloadURL() as String;
        updateImages.add(url);
      }
    }

    for(final image in images){
      if(!newImages.contains(image)){
        try {
          final ref = await storage.getReferenceFromUrl(image);
          await ref.delete();
        } catch (e){
          debugPrint('Falha ao deletar $image');
        }
      }
    }

    await firestoreRef.updateData({'images': updateImages});

    images = updateImages;

    score = score1 + score2 + score3;

    loading = false;

  }

  Future<void> save2() async {

    loading = true;

    final Map<String, dynamic> data = {
      'name' :  name,
      'score3' : score3,
      'score2' : score2,
      'score1' : score1,
      'score' : score,
      'description' : description,
      'codigo' : codigo,
      'deleted': deleted

    };

    if (id ==null){
      final doc = await firestore.collection('equipes').add(data);
      id = doc.documentID;
    } else {
      await firestoreRef.updateData(data);
    }


    score = score1 + score2 + score3;

    loading = false;

  }

  void delete(){
    firestoreRef.updateData({'deleted': true});
  }


  @override
  String toString() {
    return 'Equipe{id: $id, nivel: $nivel, name: $name, score1: $score1, score2: $score2, score3: $score3, description: $description, codigo: $codigo, images: $images, newImages: $newImages}';
  }
}