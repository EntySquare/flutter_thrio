// Copyright (c) 2022 foxsofter.
//

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_thrio/flutter_thrio.dart';

import '../../route.dart';

part 'flutter5.context.dart';
part 'flutter5.state.dart';

class Flutter5Page extends NavigatorStatefulPage {
  const Flutter5Page({
    super.key,
    required super.moduleContext,
    super.params,
    required super.url,
    super.index,
  });

  @override
  _Flutter5PageState createState() => _Flutter5PageState();
}

class _Flutter5PageState extends State<Flutter5Page> {
  @override
  void dispose() {
    ThrioLogger.d('page5 dispose');
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('page view example',
            style: TextStyle(color: Colors.black)),
        leading: context.showPopAwareWidget(const IconButton(
          color: Colors.black,
          tooltip: 'back',
          icon: Icon(Icons.arrow_back_ios),
          onPressed: ThrioNavigator.pop,
        )),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: NavigatorPageLifecycle(
          url: biz.biz1.flutter1.home.url,
          willAppear: (final settings) {
            ThrioLogger.v('page5 willAppear -> $settings');
          },
          didAppear: (final settings) {
            ThrioLogger.v('page5 didAppear -> $settings');
          },
          willDisappear: (final settings) {
            ThrioLogger.v('page5 willDisappear -> $settings');
          },
          didDisappear: (final settings) {
            ThrioLogger.v('page5 didDisappear -> $settings');
          },
          child: NavigatorPageView(
            parentUrl: biz.biz1.flutter7.url,
            routeSettings: <RouteSettings>[
              NavigatorRouteSettings.settingsWith(
                  url: biz.biz1.flutter1.home.url, index: 1),
              NavigatorRouteSettings.settingsWith(
                  url: biz.biz1.flutter3.url, index: 2),
              NavigatorRouteSettings.settingsWith(
                  url: biz.biz2.flutter2.url, index: 3),
              NavigatorRouteSettings.settingsWith(
                  url: biz.biz2.flutter4.url, index: 4),
            ],
          )));
}
