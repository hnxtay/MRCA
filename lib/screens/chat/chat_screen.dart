import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:mrca/blocs/chat_screen_view_model.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key, required this.conversationId}) : super(key: key);
  final String conversationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<ChatScreenViewModel>(
          builder: (_, value, __) {
            return StreamBuilder<List<type.Message>>(
                stream: value.getMessages(conversationId),
                initialData: const [],
                builder: (_, snapshot) {
                  return Chat(
                    messages: (snapshot.data ?? []).reversed.toList(),
                    onSendPressed: (text) {},
                    user: const type.User(id: '1508'),
                  );
                });
          },
        ),
      ),
    );
  }
}
