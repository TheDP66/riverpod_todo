import 'package:flutter/material.dart';
import 'package:riverpod_todo/common/utils/constants.dart';
import 'package:riverpod_todo/common/widgets/app_style.dart';
import 'package:riverpod_todo/common/widgets/height_spacer.dart';
import 'package:riverpod_todo/common/widgets/reusable_text.dart';
import 'package:riverpod_todo/common/widgets/width_spacer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReusableText(
              text: "Todo ",
              style: appstyle(
                26,
                AppConst.kGreen,
                FontWeight.bold,
              ),
            ),
            const WidthSpacer(width: 20),
            ReusableText(
              text: "Todo ",
              style: appstyle(
                26,
                AppConst.kGreen,
                FontWeight.bold,
              ),
            ),
            const HeightSpacer(
              height: 20,
            ),
            ReusableText(
              text: "Todo ",
              style: appstyle(
                26,
                AppConst.kGreen,
                FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
