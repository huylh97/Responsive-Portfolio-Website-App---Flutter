import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/avatar.jpeg"),
            ),
            Spacer(flex: 1),
            Text(
              "Le Hoang Huy",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Mobile Developer",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
