import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'skills.dart';
import 'another_skills.dart';
import 'my_info.dart';

// ignore: must_be_immutable
class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);

  final ScrollController controller = ScrollController();
  String cvUrl =
      "https://drive.google.com/file/d/1cElUZkriImUvXYB-l9R-5gXIXwCGZRQH/view?usp=sharing";
  String githubUrl = "https://github.com/huylh97";
  String linkedin = "https://www.linkedin.com/in/le-hoang-huy-623520173/";
  String facebook = "https://www.facebook.com/lehoanghuy.97/";

  // ignore: unused_element
  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AreaInfoText(title: "Residence", text: "Vietnam"),
                    AreaInfoText(
                        title: "Date of birth", text: "Sep 17th, 1997"),
                    AreaInfoText(title: "Phone number", text: "0385821426"),
                    AreaInfoText2Line(
                        title: "Email", text: "hoanghuyle1709@gmail.com"),
                    AreaInfoText2Line(
                        title: "Address",
                        text:
                            "635 Dien Bien Phu, Ward 25, Binh Thanh District, Ho Chi Minh City"),
                    Divider(),
                    Skills(),
                    Divider(),
                    AnotherSkills(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color),
                          ),
                          const SizedBox(width: 10.0),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () => _launchURL(githubUrl),
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () => _launchURL(linkedin),
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () => _launchURL(facebook),
                            icon: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
