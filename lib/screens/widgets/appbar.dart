import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../ui/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      leadingWidth: 200.w,
      // backgroundColor: Colors.amber,
      toolbarHeight: 68.h,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          16.w.widthBox,
          SvgPicture.asset(
            "assets/svgs/logo.svg",
            fit: BoxFit.none,
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/profile.png",
              // fit: BoxFit.cover,
              width: 32.w,
              height: 32.h,
            ),
            16.w.widthBox,
            SvgPicture.asset("assets/svgs/globe.svg"),
            16.w.widthBox,
            SvgPicture.asset("assets/svgs/menu.svg"),
            16.w.widthBox
          ],
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 1.h),
        child:
            Divider(height: 1.h, color: AppColors.blackTint.withOpacity(0.5)),
      ),
    );
  }
}
