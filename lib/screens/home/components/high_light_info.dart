import 'package:flutter/material.dart';

import '../../../constants.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Wrap(
        spacing: 30,
        children: [
          HighLight(
            counter: AnimatedCounter(
              value: 119,
              text: "k+",
            ),
            label: "Subcribers",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Videos",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 15,
              text: "+",
            ),
            label: "Projects",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 10,
              text: "+",
            ),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  final Widget counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          counter,
          const SizedBox(width: defaultPadding / 2),
          Text(
            label,
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({Key? key, required this.value, required this.text})
      : super(key: key);

  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        value.toString() + text,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}
