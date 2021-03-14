import 'package:cloud_firestore/cloud_firestore.dart';


class UrlMateriais {

  String url1;
  String url2;
  String url3;

  // List<String> links;


  UrlMateriais.fromDocument(DocumentSnapshot document) {

    url1 = document['url1'] as String;
    url2 = document['url2'] as String;
    url3 = document['url3'] as String;

    // links = List<String>.from(document.data['links'] as List<dynamic>);

  }
}
