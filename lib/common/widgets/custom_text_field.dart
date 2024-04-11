import 'package:flutter/material.dart';
import 'package:riverpod_todo/common/utils/constants.dart';
import 'package:riverpod_todo/common/widgets/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.keyboardType,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.hintStyle,
    required this.controller,
    this.onChanged,
  });

  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? suffixIcon, prefixIcon;
  final TextStyle? hintStyle;
  final TextEditingController controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.kWidth * .9,
      decoration: BoxDecoration(
        color: AppConst.kLight,
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppConst.kRadius,
          ),
        ),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        cursorHeight: 25,
        onChanged: onChanged,
        style: appstyle(18, AppConst.kBkDark, FontWeight.w700),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon,
          suffixIconColor: AppConst.kBkDark,
          prefixIcon: prefixIcon,
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppConst.kRed,
              width: .5,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: .5,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppConst.kRed,
              width: .5,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppConst.kGreyDk,
              width: .5,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: AppConst.kBkDark,
              width: .5,
            ),
          ),
        ),
      ),
    );
  }
}
