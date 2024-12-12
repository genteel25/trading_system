import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StackedImage extends StatelessWidget {
  const StackedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44.w,
      child: Stack(
        children: [
          SvgPicture.asset("assets/svgs/bitcoin.svg"),
          Positioned(
            left: 20,
            child: SvgPicture.asset("assets/svgs/dollars.svg"),
          ),
        ],
      ),
    );
  }
}
