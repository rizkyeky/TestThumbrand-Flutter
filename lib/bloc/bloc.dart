library bloc;

import 'dart:math';
// import 'package:rxdart/rxdart.dart';

import 'package:flutter/foundation.dart';
import 'package:test_thumbrand/locator.dart';
import 'package:test_thumbrand/model/model.dart';
import 'package:test_thumbrand/service/service.dart';

part 'first_bloc.dart';
part 'second_bloc.dart';
part 'third_bloc.dart';

abstract class Bloc {
  void init();
  void dispose();
}