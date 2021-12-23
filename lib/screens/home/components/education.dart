import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  static String englishEvidence =
      "https://drive.google.com/drive/folders/1gqi6pEuu4hPfTsGenDkiO3GTXr_1Ymew?usp=sharing";

  // ignore: unused_element
  void _launchURL() async {
    if (!await launch(englishEvidence))
      throw 'Could not launch $englishEvidence';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education & Certificates",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              EducationCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Engineering Degree",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 15),
                    Text(
                        "University: Ho Chi Minh City University of Technology"),
                    const SizedBox(height: 8),
                    Text("Major in Computer Science | 2015 - 2022"),
                    const SizedBox(height: 8),
                    Text("Expected graduation: June 2022"),
                    const SizedBox(height: 8),
                    Text("Expected academic rating: Good"),
                  ],
                ),
              ),
              const SizedBox(width: defaultPadding),
              EducationCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "English Certificate",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 15),
                    Text("Toeic | May 17th, 2020"),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text("Result: 720"),
                        const SizedBox(width: defaultPadding / 2),
                        Text("("),
                        InkWell(
                          onTap: _launchURL,
                          child: Text(
                            "link",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        Text(")"),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text("Ielts | Scheduled exam in June 2022"),
                    const SizedBox(height: 8),
                    Text("Goals: 6.5")
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}
