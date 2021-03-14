import 'package:flutter1/models/url.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UrlManager extends ChangeNotifier {

  UrlManager(){
    _loadAllLinks();
  }

  final Firestore firestore = Firestore.instance;

  List<Url> allUrls = [];

  Future<void> _loadAllLinks() async {
    final QuerySnapshot snapProducts =
    await firestore.collection('quizlinks').getDocuments();

    allUrls = snapProducts.documents.map(
            (d) => Url.fromDocument(d)).toList();

    notifyListeners();
  }

}