import 'package:flutter/material.dart';
import 'package:mrca/api/api.dart';
import 'package:mrca/models/conversation.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final _api = Api();
  var conversations = <Conversation>[];
  var bottomNavIndex = 0;

  HomeScreenViewModel() {
    conversationsStream.listen((event) {
      conversations = event;
      notifyListeners();
    });
  }

  Stream<List<Conversation>> get conversationsStream =>
      _api.getAllConversation(10).map((event) {
        return event.docs.map((e) => Conversation.fromJson(e.data())).toList();
      });

  setBottomNavIndex(int index) {
    bottomNavIndex = index;
    notifyListeners();
  }
}
