// ignore_for_file: non_constant_identifier_names

class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "Responsive Portfolio Website & App - Flutter",
    description:
        "Using Flutter V2, I build this project in order to store and present my CV online. I repsonsive it for Website and Mobile App. You can see more detail about this project by tap Read More.",
  ),
  Project(
    title: "Flutter Facebook UI - Flutter",
    description:
        "I did this project to review my knowledge and improve my programming skills with FLutter. It clone simple Facebook UI for web and mobile. To see some screenshot and details, please tap Read More.",
  ),
  Project(
    title: "Vietnam Tourist App - Flutter, NodeJS, Mongodb",
    description:
        "I have worked on this project for Assignment in University in team with 2 member. This project include Mobile App using Flutter, server implemented by NodeJs and Mongodb. App has some feature like authentication, information of some destination in VietNam, ...",
  ),
  Project(
    title: "Furniture Shop App UI - Swift",
    description:
        "I did this project when I started learning Swift. This app has two screen and using basic component in Swift like as NavigationView, ScrollView, HStack, VStack, Text, Image, ...",
  ),
];
