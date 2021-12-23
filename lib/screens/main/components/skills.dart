import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Technical Skills",
              style: Theme.of(context).textTheme.subtitle1),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Flutter",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Swift",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "MVC/MVVM",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Git",
        ),
      ],
    );
  }
}
