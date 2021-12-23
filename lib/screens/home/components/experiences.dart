import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experiences",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 10),
          // ---
          // Mark: WEIT company
          // ---
          RichText(
            overflow: TextOverflow.visible,
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: "WEIT consulting and software development company ",
              style: Theme.of(context).textTheme.subtitle1,
              children: <TextSpan>[
                TextSpan(
                  text: '(December 2020 - Present)',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Mark: Flutter developer
          Text(
            "Flutter Developer",
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: primaryColor),
          ),
          const SizedBox(height: 8),
          Text(
            "I have experience with Flutter for both iOS and Android, as well as a good understanding of native programming languages such as Java and Swift. Moreover, I have good object-oriented programming skills and experience of working with remote data via REST API and JSON. In paticular, I worked on: ",
            style: TextStyle(height: 1.5),
            textAlign: TextAlign.justify,
          ),
          EleOfList(
              text:
                  "Design & implement new app modules based on the product requirements using Flutter framework"),
          EleOfList(text: "Build user interfaces designed by UI/UX designers"),
          EleOfList(
              text:
                  "Apply some state-management framework like as BLoc, Provider, GetX"),
          EleOfList(
              text:
                  "Integrate various APIs from third parties like as Dio, http"),
          EleOfList(
              text:
                  "Debug existing apps components, fix issues and avoid regressions"),
          EleOfList(
              text:
                  "Add Push Notifications to a Flutter App using Firebase Cloud Messaging"),
          EleOfList(text: "Write some simple unit tests"),
          EleOfList(text: "Participate in build and release Android, IOS app"),
          const SizedBox(height: 8),
          Text(
            "Some projects I have work on: Elehome, Elehome Operation, Brew Coffee",
            style: TextStyle(height: 1.5),
          ),

          // Mark: IOS developer
          SizedBox(height: 20),
          Text(
            "IOS Developer",
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: primaryColor),
          ),
          const SizedBox(height: 8),
          Text(
            "I have some basic knowledge of the Swift programming language via one project cooperation with FPT Software and some projects I did in learning progress. In paticular, I Worked on: ",
            style: TextStyle(height: 1.5),
            textAlign: TextAlign.justify,
          ),
          EleOfList(
              text:
                  "Build user interfaces designed by UI/UX designers using Swift"),
          EleOfList(text: "Responsive user interfaces for iphone and ipad"),
          EleOfList(
              text: "Update colors, images, icons for light and dark mode"),
          EleOfList(text: "Apply software architectural pattern MVC"),
          EleOfList(
              text: "Connect app with external API through Alamofile library"),
          EleOfList(
              text:
                  "Integrate Microsoft Authentication Library (MSAL) for authentication"),
          EleOfList(
              text:
                  "Participate in build and release IOS app through App Center"),
          const SizedBox(height: 8),
          Text(
            "You can see some Swfit projects I have work on in My Personal Project section.",
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: 10),
          // ---
          // Mark: WEIT company
          // ---
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: "VNG Corporation ",
              style: Theme.of(context).textTheme.subtitle1,
              children: <TextSpan>[
                TextSpan(
                  text: '(October 2019 – December 2019)',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Fresher Java Developer",
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: primaryColor),
          ),
          const SizedBox(height: 8),
          Text(
            "I have 3 months as intern at Java Team. I have been trained about Linus System, Java Core, Java design pattern, Git, ...",
            style: TextStyle(height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class EleOfList extends StatelessWidget {
  const EleOfList({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 25,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 10,
            width: 10,
            child: SvgPicture.asset("assets/icons/check.svg"),
          ),
          SizedBox(width: defaultPadding / 2),
          Expanded(
            child: Text(
              text,
            ),
          ),
        ],
      ),
    );
  }
}
