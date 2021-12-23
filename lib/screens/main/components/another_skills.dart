import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class AnotherSkills extends StatelessWidget {
  const AnotherSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Another Skills",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        KnowledgeText(text: "English"),
        KnowledgeText(text: "Communication"),
        KnowledgeText(text: "Teamwork"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
    this.onTap,
    this.subText = "",
  }) : super(key: key);

  final String text;
  final String? subText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
          onTap == null
              ? SizedBox()
              : InkWell(
                  onTap: onTap,
                  child: Text(
                    subText!,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
        ],
      ),
    );
  }
}
