import 'package:flutter/material.dart';

abstract class StatelessView<T1, T2> extends StatelessWidget {
  final T2 controller;

  T1 get widget => (controller as State).widget as T1;

  const StatelessView({super.key, required this.controller});

  @override
  Widget build(BuildContext context);
}
