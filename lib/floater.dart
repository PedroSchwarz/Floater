library floater;

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

part 'floater_router.dart';
part 'floater_navigator.dart';

class Floater with FloaterRouter, FloaterNavigator {
  GlobalKey<NavigatorState> get navigatorKey => _key;

  Route<dynamic>? Function(RouteSettings) get generator => _router.generator;
}
