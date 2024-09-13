// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentUserState {
  User? get user => throw _privateConstructorUsedError;

  /// Create a copy of CurrentUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentUserStateCopyWith<CurrentUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserStateCopyWith<$Res> {
  factory $CurrentUserStateCopyWith(
          CurrentUserState value, $Res Function(CurrentUserState) then) =
      _$CurrentUserStateCopyWithImpl<$Res, CurrentUserState>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class _$CurrentUserStateCopyWithImpl<$Res, $Val extends CurrentUserState>
    implements $CurrentUserStateCopyWith<$Res> {
  _$CurrentUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentUserStateImplCopyWith<$Res>
    implements $CurrentUserStateCopyWith<$Res> {
  factory _$$CurrentUserStateImplCopyWith(_$CurrentUserStateImpl value,
          $Res Function(_$CurrentUserStateImpl) then) =
      __$$CurrentUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$CurrentUserStateImplCopyWithImpl<$Res>
    extends _$CurrentUserStateCopyWithImpl<$Res, _$CurrentUserStateImpl>
    implements _$$CurrentUserStateImplCopyWith<$Res> {
  __$$CurrentUserStateImplCopyWithImpl(_$CurrentUserStateImpl _value,
      $Res Function(_$CurrentUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$CurrentUserStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$CurrentUserStateImpl implements _CurrentUserState {
  const _$CurrentUserStateImpl({required this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'CurrentUserState(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUserStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of CurrentUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentUserStateImplCopyWith<_$CurrentUserStateImpl> get copyWith =>
      __$$CurrentUserStateImplCopyWithImpl<_$CurrentUserStateImpl>(
          this, _$identity);
}

abstract class _CurrentUserState implements CurrentUserState {
  const factory _CurrentUserState({required final User? user}) =
      _$CurrentUserStateImpl;

  @override
  User? get user;

  /// Create a copy of CurrentUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentUserStateImplCopyWith<_$CurrentUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
