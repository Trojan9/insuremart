import 'package:flutter/material.dart';
import 'package:insure_marts/core/view_model/base_vm.dart';
import 'package:insure_marts/locator.dart';
import 'package:provider/provider.dart';



class BaseView<T extends BaseModel> extends StatefulWidget {
  const BaseView({this.builder, this.onModelReady, Key key}) : super(key: key);

  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
  T model = locator<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
        value: model, child: Consumer<T>(builder: widget.builder));
  }
}
