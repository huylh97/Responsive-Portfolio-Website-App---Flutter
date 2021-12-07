import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
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
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
        style: Theme.of(context).textTheme.subtitle1!,
        child: Row(
          children: [
            FlutterCodeText(),
            const SizedBox(width: 8),
            Text("I build "),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Responsive web and mobile app.'),
                TypewriterAnimatedText('Complete portfolip web ui.'),
                TypewriterAnimatedText('Flutter with socket-io app.'),
              ],
            ),
            FlutterCodeText(),
          ],
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
        children: const <TextSpan>[
          TextSpan(text: '<'),
          TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
