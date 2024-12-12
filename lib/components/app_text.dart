import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:trader/ui/colors.dart';

class AppText extends StatelessWidget {
  const AppText({super.key, required this.text, this.style, this.textAlign});
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: textAlign)
        .textStyle(style ?? const TextStyle(color: AppColors.lightest));
  }
}
