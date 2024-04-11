import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo/common/utils/constants.dart';
import 'package:riverpod_todo/common/widgets/app_style.dart';
import 'package:riverpod_todo/common/widgets/custom_otln_btn.dart';
import 'package:riverpod_todo/common/widgets/custom_text_field.dart';
import 'package:riverpod_todo/common/widgets/height_spacer.dart';
import 'package:riverpod_todo/common/widgets/reusable_text.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                ),
                child: const Placeholder(
                  fallbackHeight: 320,
                ),
              ),
              const HeightSpacer(height: 20),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                  left: 16.w,
                ),
                child: ReusableText(
                  text: "Please enter your phone number",
                  style: appstyle(
                    17,
                    AppConst.kLight,
                    FontWeight.w500,
                  ),
                ),
              ),
              const HeightSpacer(height: 20),
              Center(
                child: CustomTextField(
                  controller: phone,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(4),
                    child: GestureDetector(),
                  ),
                  keyboardType: TextInputType.phone,
                  hintText: "Enter phone number",
                  hintStyle: appstyle(
                    16,
                    AppConst.kBkDark,
                    FontWeight.w600,
                  ),
                ),
              ),
              const HeightSpacer(height: 20),
              CustomOtlnBtn(
                width: AppConst.kWidth * .9,
                height: AppConst.kHeight * .07,
                color: AppConst.kBkDark,
                color2: AppConst.kLight,
                text: "Send Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
