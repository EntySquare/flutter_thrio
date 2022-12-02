// The MIT License (MIT)
//
// Copyright (c) 2022 foxsofter.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

import '../extension/thrio_dynamic.dart';
import '../module/thrio_module.dart';

mixin NavigatorPage {
  ModuleContext get moduleContext;

  dynamic get params;

  String? get url;

  int get index;

  /// Get parameter from params, throw ArgumentError when`key`'s value  not found .
  ///
  T getParam<T>(final String key) => getValue(params, key);

  /// Get parameter from params, return `defaultValue` when`key`'s value  not found .
  ///
  T getParamOrDefault<T>(final String key, final T defaultValue) =>
      getValueOrDefault(params, key, defaultValue);

  /// Get parameter from params.
  ///
  T? getParamOrNull<T>(final String key) => getValueOrNull(params, key);
}
