library page;

import 'package:flutter/material.dart';

import 'package:test_thumbrand/locator.dart';
import 'package:test_thumbrand/bloc/bloc.dart';
import 'package:test_thumbrand/model/model.dart';

import 'package:test_thumbrand/theme.dart';
import 'package:test_thumbrand/view/component/component.dart';

part 'first_page.dart';

abstract class Page<T extends Bloc> extends StatefulWidget {

  final T bloc = locator<T>();
  
  Page({
    Key key,
  }) : super(key: key);

  @override
  _PageState<T> createState() => _PageState<T>();

  @protected
  void init();

  @protected
  void dispose();

  @protected
  Widget build(BuildContext context);
}

class _PageState<T extends Bloc> extends State<Page<T>> {
  
  @override
  void initState() {
    if (widget.init != null) {
      widget.init();
      widget.bloc.init();
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.dispose != null) {
      widget.dispose();
      widget.bloc.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.build(context);
  }
}