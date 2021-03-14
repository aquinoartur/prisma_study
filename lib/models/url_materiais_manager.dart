
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter1/models/url_materiais.dart';

class UrlMateriaisManager extends ChangeNotifier {

  UrlMateriaisManager(){
    _loadAllMateriaisLinks();
  }
  final Firestore firestore = Firestore.instance;

  List<UrlMateriais> allMateriaisUrls = [];

  Future<void> _loadAllMateriaisLinks() async {
    final QuerySnapshot snapProducts =
    await firestore.collection('materiaislinks').getDocuments();

    allMateriaisUrls = snapProducts.documents.map(
            (d) => UrlMateriais.fromDocument(d)).toList();

    notifyListeners();
  }

}