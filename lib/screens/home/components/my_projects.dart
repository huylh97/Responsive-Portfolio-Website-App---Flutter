import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          "My Personal Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectsGridview(
            crossAxisCount: 1,
            childAspectRatio: 1.5,
          ),
          mobileLarge: ProjectsGridview(
            crossAxisCount: 2,
            childAspectRatio: 1,
            contentMaxLine: 4,
          ),
          tablet: ProjectsGridview(
            childAspectRatio: 1,
          ),
          desktop: ProjectsGridview(
            contentMaxLine: MediaQuery.of(context).size.width > 1300 ? 6 : 4,
            childAspectRatio:
                MediaQuery.of(context).size.width > 1100 ? 5 / 4 : 1,
          ),
        ),
      ],
    );
  }
}

class ProjectsGridview extends StatelessWidget {
  const ProjectsGridview({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 5 / 4,
    this.contentMaxLine = 4,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final int contentMaxLine;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: demo_projects.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: secondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                demo_projects[index].title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(height: 1.6),
              ),
              const SizedBox(height: 15),
              Text(
                demo_projects[index].description!,
                overflow: TextOverflow.ellipsis,
                maxLines: contentMaxLine,
                style: TextStyle(height: 1.5),
              ),
              Spacer(),
              TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    content: const Text(
                        "Sory, I haven't finished this part yet. Please wait for a new update from me"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                child: Text(
                  "Read More >>",
                  style: TextStyle(color: primaryColor),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
