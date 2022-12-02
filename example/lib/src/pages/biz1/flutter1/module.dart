// Copyright (c) 2022 foxsofter.
//
// Do not edit this file.
//

import 'package:flutter_thrio/flutter_thrio.dart';

import 'home/module.dart' as home;

class Module with ThrioModule {
  factory Module() => _instance;

  Module._();

  static final _instance = Module._();

  @override
  String get key => 'flutter1';

  @override
  void onModuleRegister(final ModuleContext moduleContext) {
    registerModule(home.Module(), moduleContext);
  }
}