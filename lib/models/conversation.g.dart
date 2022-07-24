// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conversation _$$_ConversationFromJson(Map<String, dynamic> json) =>
    _$_Conversation(
      id: json['id'] as String,
      from: type.User.fromJson(json['from'] as Map<String, dynamic>),
      to: type.User.fromJson(json['to'] as Map<String, dynamic>),
      lastMsg: LastMessage.fromJson(json['lastMsg'] as Map<String, dynamic>),
      status: json['status'] as String,
      time: json['time'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ConversationToJson(_$_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'lastMsg': instance.lastMsg,
      'status': instance.status,
      'time': instance.time,
      'members': instance.members,
    };
