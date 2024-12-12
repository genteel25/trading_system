import 'dart:ui';
import 'package:flutter/material.dart';
import '../screens/widgets/trade_modal.dart';

class AppModals {
  static tradeModal(context, {required bool isBuy}) => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        useSafeArea: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: TradeModalWidget(
            isBuy: isBuy,
          ),
        ),
      );
}
