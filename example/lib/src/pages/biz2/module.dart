// Copyright (c) 2022 foxsofter.
//
// Do not edit this file.
//

import 'package:flutter_thrio/flutter_thrio.dart';

import 'flutter2/module.dart' as flutter2;
import 'flutter4/module.dart' as flutter4;
import 'flutter6/module.dart' as flutter6;

class Module with ThrioModule {
  factory Module() => _instance;

  Module._();

  static final _instance = Module._();

  @override
  String get key => 'biz2';

  @override
  void onModuleRegister(final ModuleContext moduleContext) {
    registerModule(flutter2.Module(), moduleContext);
    registerModule(flutter4.Module(), moduleContext);
    registerModule(flutter6.Module(), moduleContext);
  }
}
