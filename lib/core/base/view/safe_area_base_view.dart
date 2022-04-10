// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'base_wiew.dart';

class SafeAreaBaseView<T extends Store> extends StatelessWidget {
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final VoidCallback? onDispose;
  final Function(T model)? onModelReady;
  const SafeAreaBaseView(
      {required this.onPageBuilder,
      required this.viewModel,
      this.onDispose,
      this.onModelReady});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      onPageBuilder: onPageBuilder,
      onModelReady: onModelReady!,
      onDispose: onDispose,
      viewModel: viewModel,
      key: key,
    );
  }
}
