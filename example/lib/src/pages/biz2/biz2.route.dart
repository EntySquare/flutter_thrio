// Copyright (c) 2022 foxsofter.
//
// Do not edit this file.
//

import 'package:flutter_thrio/flutter_thrio.dart';

import 'flutter2/flutter2.route.dart';
import 'flutter4/flutter4.route.dart';
import 'flutter6/flutter6.route.dart';

class Biz2Route extends NavigatorRouteNode {
  factory Biz2Route(final NavigatorRouteNode parent) => _instance ??= Biz2Route._(parent);

  Biz2Route._(super.parent);

  static Biz2Route? _instance;

  late final Flutter2Route flutter2 = Flutter2Route(this);

  late final Flutter4Route flutter4 = Flutter4Route(this);

  late final Flutter6Route flutter6 = Flutter6Route(this);

  @override
  String get name => 'biz2';
}
