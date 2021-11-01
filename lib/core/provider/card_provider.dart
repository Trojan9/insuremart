import 'dart:collection';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:insure_marts/core/models/card_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardProvider with ChangeNotifier {
  
  List<CardModel> cards = [];


  CardProvider() {
    initialState();
  }

  UnmodifiableListView<CardModel> get allCards => UnmodifiableListView(cards);

  void initialState() {
    syncDataWithProvider();
  }

  void addCard(CardModel _card) {
    cards.add(_card);

    updateSharedPrefrences();

    notifyListeners();
  }


  void removeCard(CardModel _card) {
    cards.removeWhere((card) => card.id == _card.id);
    updateSharedPrefrences();

    notifyListeners();
  }



  int getCardLength() {
    return cards.length;
  }

  Future updateSharedPrefrences() async {
    List<String> myCards = cards.map((f) => json.encode(f.toJson())).toList();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    await prefs.setStringList('cards', myCards);
  }

  Future syncDataWithProvider() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var reslut = prefs.getStringList('cards');

    if (reslut != null) {
      cards = reslut.map((f) => CardModel.fromJson(json.decode(f))).toList();
    }

    notifyListeners();
  }
}
