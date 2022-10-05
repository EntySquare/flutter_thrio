// Copyright (c) 2022 bybit.
//
// Do not edit this file.
//

import 'package:flutter_thrio/flutter_thrio.dart';

import 'flutter1/flutter1.route.dart';
import 'flutter3/flutter3.route.dart';

class Biz1Route extends NavigatorRouteNode {
  factory Biz1Route(final NavigatorRouteNode parent) =>
      _instance ??= Biz1Route._(parent);

  Biz1Route._(final super.parent) {
    flutter1 = Flutter1Route(this);
    flutter3 = Flutter3Route(this);
  }

  static Biz1Route? _instance;

  late final Flutter1Route flutter1;

  late final Flutter3Route flutter3;

  @override
  String get name => 'biz1';
}