import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/abstracts.dart';
import 'package:recycile_bin_app/sign_up_view.dart';
import 'sign_in_view.dart';

class FirstView extends GetView<GetxController> {
  @override
  Widget build(context) {
    double mediaHight = MediaQuery.of(context).size.height / 1920;
    double mediaWidth = MediaQuery.of(context).size.width / 1080;

    final pages = [
      Slide(
          widgetTitle: Widgets().intoImage(mediaWidth, mediaHight),
          widgetDescription: Widgets().introContent(
              "loreajfejbfasjkfasfasblfasblfasblf", mediaWidth, mediaHight)),
      Slide(
          widgetTitle: Widgets().intoImage(mediaWidth, mediaHight),
          widgetDescription: Widgets().introContent(
              "loreajfejbfasjkfasfasblfasblfasblf", mediaWidth, mediaHight)),
      Slide(
          widgetTitle: Widgets().intoImage(mediaWidth, mediaHight),
          widgetDescription: Widgets().introContent(
              "loreajfejbfasjkfasfasblfasblfasblf", mediaWidth, mediaHight)),
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 12,
              child: IntroSlider(
                loopAutoScroll: true,
                slides: pages,
                showDoneBtn: false,
                showNextBtn: false,
                showSkipBtn: false,
                showDotIndicator: true,
                typeDotAnimation: DotSliderAnimation.DOT_MOVEMENT,
                colorDot: Colors.black26,
                colorActiveDot: const Color(0xFF00BFA6),
                sizeDot: 5,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Divider(
                indent: 111 * mediaWidth,
                endIndent: 111 * mediaWidth,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Stack(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Get.to(SignUpView());
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const StadiumBorder(),
                        fixedSize: Size(745 * mediaWidth, 168 * mediaHight)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 85 * mediaWidth),
                      child: Padding(
                        padding: EdgeInsets.only(left: 300 * mediaWidth),
                        child: Text("Sign Up",
                            style: GoogleFonts.poppins(
                                fontSize: 40 * mediaHight,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0 * mediaHight),
                    child: OutlinedButton(
                      onPressed: () => Get.to(const SignInView()),
                      style: OutlinedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(215, 255, 255, 255),
                          shape: const StadiumBorder(),
                          fixedSize: Size(382 * mediaWidth, 144 * mediaHight)),
                      child: Text("Sign In",
                          style: GoogleFonts.poppins(
                              fontSize: 40 * mediaHight,
                              fontWeight: FontWeight.w500)),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
