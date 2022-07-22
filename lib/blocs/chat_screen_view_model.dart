import 'package:flutter/foundation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:mrca/api/api.dart';

class ChatScreenViewModel extends ChangeNotifier {
  final _api = Api();

  getMessages(String conversationId) {
    return _api.getMessageOfConversation(conversationId).map((event) {
      return event.docs.map((e) => type.Message.fromJson(e.data())).toList();
    });
  }
}
