import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_todo/common/utils/constants.dart';
import 'package:riverpod_todo/common/widgets/custom_otln_btn.dart';
import 'package:riverpod_todo/features/auth/pages/login_page.dart';

import '../../../common/widgets/height_spacer.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight,
      width: AppConst.kWidth,
      color: AppConst.kBkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: const Placeholder(),
          ),
          const HeightSpacer(height: 50),
          CustomOtlnBtn(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            width: AppConst.kWidth * .9,
            height: AppConst.kHeight * .06,
            color: AppConst.kLight,
            text: "Login with a phone number",
          ),
        ],
      ),
    );
  }
}
