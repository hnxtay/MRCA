// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  String get id => throw _privateConstructorUsedError;

  type.User get from => throw _privateConstructorUsedError;

  type.User get to => throw _privateConstructorUsedError;

  LastMessage get lastMsg => throw _privateConstructorUsedError;

  String get status => throw _privateConstructorUsedError;

  String get time => throw _privateConstructorUsedError;

  List<String> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res>;

  $Res call(
      {String id,
      type.User from,
      type.User to,
      LastMessage lastMsg,
      String status,
      String time,
      List<String> members});

  $LastMessageCopyWith<$Res> get lastMsg;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res> implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  final Conversation _value;

  // ignore: unused_field
  final $Res Function(Conversation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? lastMsg = freezed,
    Object? status = freezed,
    Object? time = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as type.User,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as type.User,
      lastMsg: lastMsg == freezed
          ? _value.lastMsg
          : lastMsg // ignore: cast_nullable_to_non_nullable
              as LastMessage,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $LastMessageCopyWith<$Res> get lastMsg {
    return $LastMessageCopyWith<$Res>(_value.lastMsg, (value) {
      return _then(_value.copyWith(lastMsg: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$_ConversationCopyWith(
          _$_Conversation value, $Res Function(_$_Conversation) then) =
      __$$_ConversationCopyWithImpl<$Res>;

  @override
  $Res call(
      {String id,
      type.User from,
      type.User to,
      LastMessage lastMsg,
      String status,
      String time,
      List<String> members});

  @override
  $LastMessageCopyWith<$Res> get lastMsg;
}

/// @nodoc
class __$$_ConversationCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res>
    implements _$$_ConversationCopyWith<$Res> {
  __$$_ConversationCopyWithImpl(
      _$_Conversation _value, $Res Function(_$_Conversation) _then)
      : super(_value, (v) => _then(v as _$_Conversation));

  @override
  _$_Conversation get _value => super._value as _$_Conversation;

  @override
  $Res call({
    Object? id = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? lastMsg = freezed,
    Object? status = freezed,
    Object? time = freezed,
    Object? members = freezed,
  }) {
    return _then(_$_Conversation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as type.User,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as type.User,
      lastMsg: lastMsg == freezed
          ? _value.lastMsg
          : lastMsg // ignore: cast_nullable_to_non_nullable
              as LastMessage,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Conversation implements _Conversation {
  const _$_Conversation(
      {required this.id,
      required this.from,
      required this.to,
      required this.lastMsg,
      required this.status,
      required this.time,
      required final List<String> members})
      : _members = members;

  factory _$_Conversation.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationFromJson(json);

  @override
  final String id;
  @override
  final type.User from;
  @override
  final type.User to;
  @override
  final LastMessage lastMsg;
  @override
  final String status;
  @override
  final String time;
  final List<String> _members;

  @override
  List<String> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'Conversation(id: $id, from: $from, to: $to, lastMsg: $lastMsg, status: $status, time: $time, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Conversation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.lastMsg, lastMsg) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(lastMsg),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      __$$_ConversationCopyWithImpl<_$_Conversation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationToJson(
      this,
    );
  }
}

abstract class _Conversation implements Conversation {
  const factory _Conversation(
      {required final String id,
      required final type.User from,
      required final type.User to,
      required final LastMessage lastMsg,
      required final String status,
      required final String time,
      required final List<String> members}) = _$_Conversation;

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$_Conversation.fromJson;

  @override
  String get id;

  @override
  type.User get from;

  @override
  type.User get to;

  @override
  LastMessage get lastMsg;

  @override
  String get status;

  @override
  String get time;

  @override
  List<String> get members;

  @override
  @JsonKey(ignore: true)
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}
