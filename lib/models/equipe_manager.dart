import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter1/models/equipe.dart';

class EquipeManager extends ChangeNotifier {

  EquipeManager(){
    _loadAllEquipes();
  }

  final Firestore firestore = Firestore.instance;

  List<Equipe> allEquipes = [];

  String _search = '';
 String get search => _search;

  set search (String value){
    _search = value;
    notifyListeners();
  }

  List<Equipe> get filteredEquipes {

    final List<Equipe> filteredEquipes = [];

    if (search.isEmpty){
      filteredEquipes.addAll(allEquipes);
    } else {
      filteredEquipes.addAll(
          allEquipes.where((p) => p.codigo.toLowerCase().contains(search.toLowerCase()))
      );
    }

    return filteredEquipes;
  }

  void _loadAllEquipes () async {
    final QuerySnapshot snapEquipes = await firestore.collection('equipes')
        .where('deleted', isEqualTo: false).getDocuments();

    allEquipes = snapEquipes.documents.map((d) => Equipe.fromDocument(d)).toList();
    notifyListeners();
  }

  void update(Equipe equipe){
    allEquipes.removeWhere((p) => p.id == equipe.id);
    allEquipes.add(equipe);
    notifyListeners();
  }

  void delete(Equipe equipe){
    equipe.delete();
    allEquipes.removeWhere((p) => p.id == equipe.id);
    notifyListeners();
  }
}