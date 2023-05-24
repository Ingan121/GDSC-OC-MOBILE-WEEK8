import 'package:flutter/material.dart';
import 'package:week8/const/colors.dart';
import 'package:week8/const/text.dart';

class ArrowLayout extends StatelessWidget {
  const ArrowLayout({
    super.key,
    required this.appBarTitle,
    required this.body,
  });

  final String appBarTitle;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: WHITE,
        iconTheme: const IconThemeData(color: GREY900),
        leading: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded, size: 18),
        ),
        title: Text(
          appBarTitle,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: W800,
            color: GREY900,
          ),
        ),
        centerTitle: true,
      ),
      body: body,
    );
  }
}
