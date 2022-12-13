// Copyright (c) 2022 foxsofter.
//
// Do not edit this file.
//

import 'package:flutter_thrio/flutter_thrio.dart';

class Flutter2Route extends NavigatorRouteLeaf {
  factory Flutter2Route(final NavigatorRouteNode parent) => _instance ??= Flutter2Route._(parent);

  Flutter2Route._(super.parent);

  static Flutter2Route? _instance;

  @override
  String get name => 'flutter2';

  Future<TPopParams?> push<TParams, TPopParams>({
    final TParams? params,
    final bool animated = true,
    final NavigatorIntCallback? result,
  }) =>
      ThrioNavigator.push<TParams, TPopParams>(
        url: url,
        params: params,
        animated: animated,
        result: result,
      );
}
