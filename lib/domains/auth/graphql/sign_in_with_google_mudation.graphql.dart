import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SignInWithGoogle {
  factory Variables$Mutation$SignInWithGoogle({required String googleToken}) =>
      Variables$Mutation$SignInWithGoogle._({
        r'googleToken': googleToken,
      });

  Variables$Mutation$SignInWithGoogle._(this._$data);

  factory Variables$Mutation$SignInWithGoogle.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$googleToken = data['googleToken'];
    result$data['googleToken'] = (l$googleToken as String);
    return Variables$Mutation$SignInWithGoogle._(result$data);
  }

  Map<String, dynamic> _$data;

  String get googleToken => (_$data['googleToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$googleToken = googleToken;
    result$data['googleToken'] = l$googleToken;
    return result$data;
  }

  CopyWith$Variables$Mutation$SignInWithGoogle<
          Variables$Mutation$SignInWithGoogle>
      get copyWith => CopyWith$Variables$Mutation$SignInWithGoogle(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SignInWithGoogle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$googleToken = googleToken;
    final lOther$googleToken = other.googleToken;
    if (l$googleToken != lOther$googleToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$googleToken = googleToken;
    return Object.hashAll([l$googleToken]);
  }
}

abstract class CopyWith$Variables$Mutation$SignInWithGoogle<TRes> {
  factory CopyWith$Variables$Mutation$SignInWithGoogle(
    Variables$Mutation$SignInWithGoogle instance,
    TRes Function(Variables$Mutation$SignInWithGoogle) then,
  ) = _CopyWithImpl$Variables$Mutation$SignInWithGoogle;

  factory CopyWith$Variables$Mutation$SignInWithGoogle.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignInWithGoogle;

  TRes call({String? googleToken});
}

class _CopyWithImpl$Variables$Mutation$SignInWithGoogle<TRes>
    implements CopyWith$Variables$Mutation$SignInWithGoogle<TRes> {
  _CopyWithImpl$Variables$Mutation$SignInWithGoogle(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SignInWithGoogle _instance;

  final TRes Function(Variables$Mutation$SignInWithGoogle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? googleToken = _undefined}) =>
      _then(Variables$Mutation$SignInWithGoogle._({
        ..._instance._$data,
        if (googleToken != _undefined && googleToken != null)
          'googleToken': (googleToken as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SignInWithGoogle<TRes>
    implements CopyWith$Variables$Mutation$SignInWithGoogle<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignInWithGoogle(this._res);

  TRes _res;

  call({String? googleToken}) => _res;
}

class Mutation$SignInWithGoogle {
  Mutation$SignInWithGoogle({
    required this.signInWithGoogle,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignInWithGoogle.fromJson(Map<String, dynamic> json) {
    final l$signInWithGoogle = json['signInWithGoogle'];
    final l$$__typename = json['__typename'];
    return Mutation$SignInWithGoogle(
      signInWithGoogle: Mutation$SignInWithGoogle$signInWithGoogle.fromJson(
          (l$signInWithGoogle as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignInWithGoogle$signInWithGoogle signInWithGoogle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$signInWithGoogle = signInWithGoogle;
    _resultData['signInWithGoogle'] = l$signInWithGoogle.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$signInWithGoogle = signInWithGoogle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$signInWithGoogle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignInWithGoogle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$signInWithGoogle = signInWithGoogle;
    final lOther$signInWithGoogle = other.signInWithGoogle;
    if (l$signInWithGoogle != lOther$signInWithGoogle) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignInWithGoogle
    on Mutation$SignInWithGoogle {
  CopyWith$Mutation$SignInWithGoogle<Mutation$SignInWithGoogle> get copyWith =>
      CopyWith$Mutation$SignInWithGoogle(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SignInWithGoogle<TRes> {
  factory CopyWith$Mutation$SignInWithGoogle(
    Mutation$SignInWithGoogle instance,
    TRes Function(Mutation$SignInWithGoogle) then,
  ) = _CopyWithImpl$Mutation$SignInWithGoogle;

  factory CopyWith$Mutation$SignInWithGoogle.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignInWithGoogle;

  TRes call({
    Mutation$SignInWithGoogle$signInWithGoogle? signInWithGoogle,
    String? $__typename,
  });
  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle<TRes>
      get signInWithGoogle;
}

class _CopyWithImpl$Mutation$SignInWithGoogle<TRes>
    implements CopyWith$Mutation$SignInWithGoogle<TRes> {
  _CopyWithImpl$Mutation$SignInWithGoogle(
    this._instance,
    this._then,
  );

  final Mutation$SignInWithGoogle _instance;

  final TRes Function(Mutation$SignInWithGoogle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? signInWithGoogle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignInWithGoogle(
        signInWithGoogle: signInWithGoogle == _undefined ||
                signInWithGoogle == null
            ? _instance.signInWithGoogle
            : (signInWithGoogle as Mutation$SignInWithGoogle$signInWithGoogle),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle<TRes>
      get signInWithGoogle {
    final local$signInWithGoogle = _instance.signInWithGoogle;
    return CopyWith$Mutation$SignInWithGoogle$signInWithGoogle(
        local$signInWithGoogle, (e) => call(signInWithGoogle: e));
  }
}

class _CopyWithStubImpl$Mutation$SignInWithGoogle<TRes>
    implements CopyWith$Mutation$SignInWithGoogle<TRes> {
  _CopyWithStubImpl$Mutation$SignInWithGoogle(this._res);

  TRes _res;

  call({
    Mutation$SignInWithGoogle$signInWithGoogle? signInWithGoogle,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle<TRes>
      get signInWithGoogle =>
          CopyWith$Mutation$SignInWithGoogle$signInWithGoogle.stub(_res);
}

const documentNodeMutationSignInWithGoogle = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignInWithGoogle'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'googleToken')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signInWithGoogle'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'googleToken'),
            value: VariableNode(name: NameNode(value: 'googleToken')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'firstName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$SignInWithGoogle _parserFn$Mutation$SignInWithGoogle(
        Map<String, dynamic> data) =>
    Mutation$SignInWithGoogle.fromJson(data);
typedef OnMutationCompleted$Mutation$SignInWithGoogle = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SignInWithGoogle?,
);

class Options$Mutation$SignInWithGoogle
    extends graphql.MutationOptions<Mutation$SignInWithGoogle> {
  Options$Mutation$SignInWithGoogle({
    String? operationName,
    required Variables$Mutation$SignInWithGoogle variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignInWithGoogle? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignInWithGoogle? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignInWithGoogle>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SignInWithGoogle(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignInWithGoogle,
          parserFn: _parserFn$Mutation$SignInWithGoogle,
        );

  final OnMutationCompleted$Mutation$SignInWithGoogle? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SignInWithGoogle
    extends graphql.WatchQueryOptions<Mutation$SignInWithGoogle> {
  WatchOptions$Mutation$SignInWithGoogle({
    String? operationName,
    required Variables$Mutation$SignInWithGoogle variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignInWithGoogle? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSignInWithGoogle,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SignInWithGoogle,
        );
}

extension ClientExtension$Mutation$SignInWithGoogle on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignInWithGoogle>>
      mutate$SignInWithGoogle(
              Options$Mutation$SignInWithGoogle options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignInWithGoogle>
      watchMutation$SignInWithGoogle(
              WatchOptions$Mutation$SignInWithGoogle options) =>
          this.watchMutation(options);
}

class Mutation$SignInWithGoogle$HookResult {
  Mutation$SignInWithGoogle$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SignInWithGoogle runMutation;

  final graphql.QueryResult<Mutation$SignInWithGoogle> result;
}

Mutation$SignInWithGoogle$HookResult useMutation$SignInWithGoogle(
    [WidgetOptions$Mutation$SignInWithGoogle? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SignInWithGoogle());
  return Mutation$SignInWithGoogle$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignInWithGoogle>
    useWatchMutation$SignInWithGoogle(
            WatchOptions$Mutation$SignInWithGoogle options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignInWithGoogle
    extends graphql.MutationOptions<Mutation$SignInWithGoogle> {
  WidgetOptions$Mutation$SignInWithGoogle({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignInWithGoogle? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignInWithGoogle? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignInWithGoogle>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SignInWithGoogle(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignInWithGoogle,
          parserFn: _parserFn$Mutation$SignInWithGoogle,
        );

  final OnMutationCompleted$Mutation$SignInWithGoogle? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SignInWithGoogle
    = graphql.MultiSourceResult<Mutation$SignInWithGoogle> Function(
  Variables$Mutation$SignInWithGoogle, {
  Object? optimisticResult,
  Mutation$SignInWithGoogle? typedOptimisticResult,
});
typedef Builder$Mutation$SignInWithGoogle = widgets.Widget Function(
  RunMutation$Mutation$SignInWithGoogle,
  graphql.QueryResult<Mutation$SignInWithGoogle>?,
);

class Mutation$SignInWithGoogle$Widget
    extends graphql_flutter.Mutation<Mutation$SignInWithGoogle> {
  Mutation$SignInWithGoogle$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SignInWithGoogle? options,
    required Builder$Mutation$SignInWithGoogle builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SignInWithGoogle(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$SignInWithGoogle$signInWithGoogle {
  Mutation$SignInWithGoogle$signInWithGoogle({
    required this.token,
    required this.user,
    this.$__typename = 'UserAuth',
  });

  factory Mutation$SignInWithGoogle$signInWithGoogle.fromJson(
      Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$SignInWithGoogle$signInWithGoogle(
      token: (l$token as String),
      user: Mutation$SignInWithGoogle$signInWithGoogle$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final Mutation$SignInWithGoogle$signInWithGoogle$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignInWithGoogle$signInWithGoogle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignInWithGoogle$signInWithGoogle
    on Mutation$SignInWithGoogle$signInWithGoogle {
  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle<
          Mutation$SignInWithGoogle$signInWithGoogle>
      get copyWith => CopyWith$Mutation$SignInWithGoogle$signInWithGoogle(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignInWithGoogle$signInWithGoogle<TRes> {
  factory CopyWith$Mutation$SignInWithGoogle$signInWithGoogle(
    Mutation$SignInWithGoogle$signInWithGoogle instance,
    TRes Function(Mutation$SignInWithGoogle$signInWithGoogle) then,
  ) = _CopyWithImpl$Mutation$SignInWithGoogle$signInWithGoogle;

  factory CopyWith$Mutation$SignInWithGoogle$signInWithGoogle.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignInWithGoogle$signInWithGoogle;

  TRes call({
    String? token,
    Mutation$SignInWithGoogle$signInWithGoogle$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes> get user;
}

class _CopyWithImpl$Mutation$SignInWithGoogle$signInWithGoogle<TRes>
    implements CopyWith$Mutation$SignInWithGoogle$signInWithGoogle<TRes> {
  _CopyWithImpl$Mutation$SignInWithGoogle$signInWithGoogle(
    this._instance,
    this._then,
  );

  final Mutation$SignInWithGoogle$signInWithGoogle _instance;

  final TRes Function(Mutation$SignInWithGoogle$signInWithGoogle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignInWithGoogle$signInWithGoogle(
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$SignInWithGoogle$signInWithGoogle$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$SignInWithGoogle$signInWithGoogle<TRes>
    implements CopyWith$Mutation$SignInWithGoogle$signInWithGoogle<TRes> {
  _CopyWithStubImpl$Mutation$SignInWithGoogle$signInWithGoogle(this._res);

  TRes _res;

  call({
    String? token,
    Mutation$SignInWithGoogle$signInWithGoogle$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes> get user =>
      CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user.stub(_res);
}

class Mutation$SignInWithGoogle$signInWithGoogle$user {
  Mutation$SignInWithGoogle$signInWithGoogle$user({
    required this.$_id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.$__typename = 'User',
  });

  factory Mutation$SignInWithGoogle$signInWithGoogle$user.fromJson(
      Map<String, dynamic> json) {
    final l$$_id = json['_id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$$__typename = json['__typename'];
    return Mutation$SignInWithGoogle$signInWithGoogle$user(
      $_id: (l$$_id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String $_id;

  final String email;

  final String firstName;

  final String lastName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$_id = $_id;
    _resultData['_id'] = l$$_id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$_id,
      l$email,
      l$firstName,
      l$lastName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignInWithGoogle$signInWithGoogle$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignInWithGoogle$signInWithGoogle$user
    on Mutation$SignInWithGoogle$signInWithGoogle$user {
  CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user<
          Mutation$SignInWithGoogle$signInWithGoogle$user>
      get copyWith => CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes> {
  factory CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user(
    Mutation$SignInWithGoogle$signInWithGoogle$user instance,
    TRes Function(Mutation$SignInWithGoogle$signInWithGoogle$user) then,
  ) = _CopyWithImpl$Mutation$SignInWithGoogle$signInWithGoogle$user;

  factory CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SignInWithGoogle$signInWithGoogle$user;

  TRes call({
    String? $_id,
    String? email,
    String? firstName,
    String? lastName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes>
    implements CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes> {
  _CopyWithImpl$Mutation$SignInWithGoogle$signInWithGoogle$user(
    this._instance,
    this._then,
  );

  final Mutation$SignInWithGoogle$signInWithGoogle$user _instance;

  final TRes Function(Mutation$SignInWithGoogle$signInWithGoogle$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignInWithGoogle$signInWithGoogle$user(
        $_id: $_id == _undefined || $_id == null
            ? _instance.$_id
            : ($_id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes>
    implements CopyWith$Mutation$SignInWithGoogle$signInWithGoogle$user<TRes> {
  _CopyWithStubImpl$Mutation$SignInWithGoogle$signInWithGoogle$user(this._res);

  TRes _res;

  call({
    String? $_id,
    String? email,
    String? firstName,
    String? lastName,
    String? $__typename,
  }) =>
      _res;
}
