import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mrca/models/last_message.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    required String id,
    required type.User from,
    required type.User to,
    required LastMessage lastMsg,
    required String status,
    required String time,
    required List<String> members,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}
