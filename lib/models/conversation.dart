import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.freezed.dart';

part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    required String id,
    required type.User from,
    required String to,
    required String lastMsg,
    required String status,
    required String time,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}
