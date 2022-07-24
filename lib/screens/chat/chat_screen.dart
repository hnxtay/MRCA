import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:mrca/blocs/chat_screen_view_model.dart';
import 'package:mrca/config/user_config.dart';
import 'package:mrca/join_channel_video.dart';
import 'package:mrca/models/conversation.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key, required this.conversation}) : super(key: key);
  final Conversation conversation;

  type.User get fromUser => conversation.from.id != currentUser.id
      ? conversation.from
      : conversation.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${fromUser.firstName} ${fromUser.lastName}'),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const JoinChannelVideo(),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                right: 32,
              ),
              child: Icon(
                Icons.video_call_rounded,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<ChatScreenViewModel>(
          builder: (_, value, __) {
            return StreamBuilder<List<type.Message>>(
                stream: value.getMessages(conversation.id),
                initialData: const [],
                builder: (_, snapshot) {
                  return Chat(
                    showUserNames: true,
                    messages: (snapshot.data ?? []).reversed.toList(),
                    onSendPressed: (text) =>
                        _sendMessage(text, conversation, value),
                    user: currentUser,
                  );
                });
          },
        ),
      ),
    );
  }

  _sendMessage(type.PartialText text, Conversation conversation,
      ChatScreenViewModel viewModel) {
    viewModel.sendMessage(text.text, 'text', conversation.id, currentUser);
  }
}
