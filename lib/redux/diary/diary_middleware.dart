import 'dart:convert';

import 'package:redux/redux.dart';
import '../app_state.dart';

//* diary redux middleware
class DiaryMiddleware extends MiddlewareClass<AppState> {
  @override
  void call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
  }
}
