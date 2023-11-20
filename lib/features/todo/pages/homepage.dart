import 'package:flutter/material.dart';
import 'package:riverpod_todo/common/widgets/app_style.dart';
import 'package:riverpod_todo/common/widgets/reusable_text.dart';

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
        child: ReusableText(
          text: "Todo with riverpod",
          style: appstyle(
            26,
            Colors.blue,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
