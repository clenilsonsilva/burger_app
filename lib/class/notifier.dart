import 'package:flutter/material.dart';

class Activator extends ValueNotifier<bool> {
  final a = ValueNotifier<bool>(false);
  final res = ValueNotifier<bool>(false);
  final List<ValueNotifier> list;
  final List<TextEditingController> listc;
  Activator({this.list = const [], this.listc = const []}) : super(false) {
    for (var controller in list) {
      controller.addListener(_check);
    }

    for (var controller in listc) {
      controller.addListener(_checkc);
    }

  }

  void _check() {
    res.value = true;
    for (var controller in list) {
      if (!controller.value) {
        res.value = false;
        break;
      }
    }
    list.isNotEmpty ? value = res.value && a.value : value = a.value;
  }

  void _checkc() {
    a.value = true;
    for (var controller in listc) {
      if (controller.value.text.isEmpty) {
        a.value = false;
        break;
      }
    }
    list.isNotEmpty ? value = res.value && a.value : value = a.value;
  }
}
