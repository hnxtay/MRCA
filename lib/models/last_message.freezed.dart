// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastMessage _$LastMessageFromJson(Map<String, dynamic> json) {
  return _LastMessage.fromJson(json);
}

/// @nodoc
mixin _$LastMessage {
  String get from => throw _privateConstructorUsedError;

  String get text => throw _privateConstructorUsedError;

  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LastMessageCopyWith<LastMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastMessageCopyWith<$Res> {
  factory $LastMessageCopyWith(
          LastMessage value, $Res Function(LastMessage) then) =
      _$LastMessageCopyWithImpl<$Res>;

  $Res call({String from, String text, String time});
}

/// @nodoc
class _$LastMessageCopyWithImpl<$Res> implements $LastMessageCopyWith<$Res> {
  _$LastMessageCopyWithImpl(this._value, this._then);

  final LastMessage _value;

  // ignore: unused_field
  final $Res Function(LastMessage) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? text = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LastMessageCopyWith<$Res>
    implements $LastMessageCopyWith<$Res> {
  factory _$$_LastMessageCopyWith(
          _$_LastMessage value, $Res Function(_$_LastMessage) then) =
      __$$_LastMessageCopyWithImpl<$Res>;

  @override
  $Res call({String from, String text, String time});
}

/// @nodoc
class __$$_LastMessageCopyWithImpl<$Res> extends _$LastMessageCopyWithImpl<$Res>
    implements _$$_LastMessageCopyWith<$Res> {
  __$$_LastMessageCopyWithImpl(
      _$_LastMessage _value, $Res Function(_$_LastMessage) _then)
      : super(_value, (v) => _then(v as _$_LastMessage));

  @override
  _$_LastMessage get _value => super._value as _$_LastMessage;

  @override
  $Res call({
    Object? from = freezed,
    Object? text = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_LastMessage(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastMessage implements _LastMessage {
  const _$_LastMessage(
      {required this.from, required this.text, required this.time});

  factory _$_LastMessage.fromJson(Map<String, dynamic> json) =>
      _$$_LastMessageFromJson(json);

  @override
  final String from;
  @override
  final String text;
  @override
  final String time;

  @override
  String toString() {
    return 'LastMessage(from: $from, text: $text, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastMessage &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_LastMessageCopyWith<_$_LastMessage> get copyWith =>
      __$$_LastMessageCopyWithImpl<_$_LastMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastMessageToJson(
      this,
    );
  }
}

abstract class _LastMessage implements LastMessage {
  const factory _LastMessage(
      {required final String from,
      required final String text,
      required final String time}) = _$_LastMessage;

  factory _LastMessage.fromJson(Map<String, dynamic> json) =
      _$_LastMessage.fromJson;

  @override
  String get from;

  @override
  String get text;

  @override
  String get time;

  @override
  @JsonKey(ignore: true)
  _$$_LastMessageCopyWith<_$_LastMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
