import 'package:flutter/material.dart';
import 'package:week8/components/custom_navigation_button.dart';
import 'package:week8/const/colors.dart';
import 'package:week8/const/text.dart';
import 'package:week8/view/multiple_corgi_images_page.dart';
import 'package:week8/view/multiple_random_images_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          children: const [
            Text(
              "강아지 API 연습하기",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: GREY900,
                fontSize: 27,
                fontWeight: W900,
              ),
            ),
            SizedBox(height: 30),
            CustomNavigationButton(
              title: "랜덤으로 강아지 사진들 불러오기",
              destination: MultipleRandomImagesPage(),
            ),
            SizedBox(height: 10),
            CustomNavigationButton(
              title: "랜덤으로 코기 사진들 불러오기",
              destination: MultipleCorgiImagesPage(),
            ),
            // TODO 강아지 API 사용해서 아무 기능이나 추가해 보기
          ],
        ),
      ),
    );
  }
}
