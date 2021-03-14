import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';

class User{
  User({this.email, this.password, this.name, this.id});
  User.fromDocument(DocumentSnapshot document){
    id = document.documentID;
    name = document.data['name'] as String;
    email = document.data['email'] as String;


  }

  String id;
  String name;
  String email;
  String password;

  String confirmPassword;

  bool admin = false;

  DocumentReference get firestoreRef =>
      Firestore.instance.document('users/$id');


  CollectionReference get tokensReference =>
      firestoreRef.collection('tokens');

  Future<void> saveData() async {
    await firestoreRef.setData(toMap());
  }

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'email': email,
    };
  }


  Future<void> saveToken() async {
    final token = await FirebaseMessaging().getToken();
    print('token $token');
    await tokensReference.document(token).setData({
      'token': token,
      'updatedAt': FieldValue.serverTimestamp(),
      'platform': Platform.operatingSystem,

    });
  }

}