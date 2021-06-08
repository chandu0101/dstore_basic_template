// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_ps.dart';

// **************************************************************************
// PStateGenerator
// **************************************************************************

@immutable
class SimplePS extends PStateModel<SimplePS> {
  final int count;

  _$SimplePSCopyWith<SimplePS> get copyWith =>
      __$SimplePSCopyWithImpl<SimplePS>(this, IdentityFn);

  SimplePS({this.count = 0});

  @override
  SimplePS copyWithMap(Map<String, dynamic> map) => SimplePS(
      count: map.containsKey("count") ? map["count"] as int : this.count);

  Map<String, dynamic> toMap() => <String, dynamic>{"count": this.count};

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is SimplePS && o.count == count;
  }

  @override
  int get hashCode => count.hashCode;

  @override
  String toString() => "SimplePS(count: ${this.count})";
}

abstract class $SimplePSCopyWith<O> {
  factory $SimplePSCopyWith(SimplePS value, O Function(SimplePS) then) =
      _$SimplePSCopyWithImpl<O>;
  O call({int count});
}

class _$SimplePSCopyWithImpl<O> implements $SimplePSCopyWith<O> {
  final SimplePS _value;
  final O Function(SimplePS) _then;
  _$SimplePSCopyWithImpl(this._value, this._then);

  @override
  O call({Object? count = dimmutable}) {
    return _then(_value.copyWith(
        count: count == dimmutable ? _value.count : count as int));
  }
}

abstract class _$SimplePSCopyWith<O> implements $SimplePSCopyWith<O> {
  factory _$SimplePSCopyWith(SimplePS value, O Function(SimplePS) then) =
      __$SimplePSCopyWithImpl<O>;
  O call({int count});
}

class __$SimplePSCopyWithImpl<O> extends _$SimplePSCopyWithImpl<O>
    implements _$SimplePSCopyWith<O> {
  __$SimplePSCopyWithImpl(SimplePS _value, O Function(SimplePS) _then)
      : super(_value, (v) => _then(v));

  @override
  SimplePS get _value => super._value;

  @override
  O call({Object? count = dimmutable}) {
    return _then(
        SimplePS(count: count == dimmutable ? _value.count : count as int));
  }
}

const _SimplePS_FullPath = "/store/pstates/simple_ps/SimplePS";

class SimplePSIncrementResult implements ToMap<SimplePSIncrementResult> {
  final int? count;

  const SimplePSIncrementResult({this.count});
  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (count != null) {
      map["count"] = count;
    }

    return map;
  }

  @override
  SimplePSIncrementResult copyWithMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
}

class SimplePSDecrementResult implements ToMap<SimplePSDecrementResult> {
  final int? count;

  const SimplePSDecrementResult({this.count});
  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (count != null) {
      map["count"] = count;
    }

    return map;
  }

  @override
  SimplePSDecrementResult copyWithMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
}

abstract class SimplePSActions {
  static Action<SimplePSIncrementResult> increment({bool silent = false}) {
    return Action<SimplePSIncrementResult>(
        name: "increment",
        silent: silent,
        type: _SimplePS_FullPath,
        isAsync: false);
  }

  static Action<SimplePSIncrementResult> incrementMock(
      SimplePSIncrementResult mock) {
    return Action<SimplePSIncrementResult>(
        name: "increment", type: _SimplePS_FullPath, mock: mock);
  }

  static Action<SimplePSDecrementResult> decrement({bool silent = false}) {
    return Action<SimplePSDecrementResult>(
        name: "decrement",
        silent: silent,
        type: _SimplePS_FullPath,
        isAsync: false);
  }

  static Action<SimplePSDecrementResult> decrementMock(
      SimplePSDecrementResult mock) {
    return Action<SimplePSDecrementResult>(
        name: "decrement", type: _SimplePS_FullPath, mock: mock);
  }
}

dynamic SimplePS_SyncReducer(dynamic _DStoreState, Action _DstoreAction) {
  _DStoreState = _DStoreState as SimplePS;
  final name = _DstoreAction.name;
  switch (name) {
    case "increment":
      {
        final _DstoreActionPayload = _DstoreAction.payload!;
        var _DStore_count = _DStoreState.count;
        _DStore_count += 1;
        return _DStoreState.copyWith(count: _DStore_count);
      }

    case "decrement":
      {
        final _DstoreActionPayload = _DstoreAction.payload!;
        var _DStore_count = _DStoreState.count;
        _DStore_count -= 1;
        return _DStoreState.copyWith(count: _DStore_count);
      }

    default:
      {
        return _DStoreState;
      }
  }
}

SimplePS SimplePS_DS() => SimplePS(count: 0);

final SimplePSMeta = PStateMeta<SimplePS>(
    type: _SimplePS_FullPath, reducer: SimplePS_SyncReducer, ds: SimplePS_DS);
