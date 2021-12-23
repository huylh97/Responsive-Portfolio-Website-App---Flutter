import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/banner.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Objective",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                FlutterCodeText(),
                const SizedBox(height: 8),
                MyBuildAnimatedText(),
                const SizedBox(height: 8),
                FlutterCodeText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: darkColor),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: Responsive.isMobile(context)
            ? Theme.of(context).textTheme.subtitle2!
            : Theme.of(context).textTheme.subtitle1!,
        child: SizedBox(
          width: 400,
          child: AnimatedTextKit(
            stopPauseOnTap: true,
            totalRepeatCount: 5,
            animatedTexts: [
              TypewriterAnimatedText(
                  'With 1+ years of experience in mobile application development,'),
              TypewriterAnimatedText(
                  'Looking for a suitable job role in Mobile Developer '),
              TypewriterAnimatedText(
                  'where I can apply my technical skills in coding and software design'),
              TypewriterAnimatedText(
                  'to fulfil the clients’ particular requirements and augment the reputation of the company '),
              TypewriterAnimatedText(
                  'and help advance my career progression to senior positions in the future.')
            ],
          ),
        ));
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.white),
        children: const <TextSpan>[
          TextSpan(text: '<'),
          TextSpan(text: 'Writing', style: TextStyle(color: primaryColor)),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
