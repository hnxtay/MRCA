import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.freezed.dart';

part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    required String id,
    required String from,
    required String to,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}
