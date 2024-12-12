import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trader/screens/controllers/home.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => _buildPage(const HomeScreen()),
    ),
  ],
);

Page _buildPage(Widget child) {
  return Platform.isIOS
      ? CupertinoPage(child: child)
      : MaterialPage(child: child);
}
