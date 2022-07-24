import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_message.freezed.dart';
part 'last_message.g.dart';

@freezed
class LastMessage with _$LastMessage {
  const factory LastMessage({
    required String from,
    required String text,
    required String time,
  }) = _LastMessage;

  factory LastMessage.fromJson(Map<String, dynamic> json) =>
      _$LastMessageFromJson(json);
}
