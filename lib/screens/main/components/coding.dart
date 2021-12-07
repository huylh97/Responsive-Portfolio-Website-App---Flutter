import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.subtitle2),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Flutter",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Swift",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Java",
        ),
      ],
    );
  }
}
