class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final String icon;

  ChatModel({this.name, this.message, this.time, this.avatarUrl, this.icon});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Anish Kumar",
      message: "Hey please share your code",
      time: "15:30 pm",
      avatarUrl: "https://avatars3.githubusercontent.com/u/583231?v=4",
      icon: "single"),
  new ChatModel(
      name: "Shubham Narkhede",
      message: "waiting for any work",
      time: "17:30 pm",
      avatarUrl:
          "https://avatars3.githubusercontent.com/u/55597383?s=400&u=5549a16ae62d223b0375d16f9bf52fda3329f6a0&v=4",
      icon: "double"),
  new ChatModel(
      name: "Jyotsna",
      message: "what are you doing?",
      time: "5:00 am",
      avatarUrl: "https://avatars3.githubusercontent.com/u/583233?v=4",
      icon: "single"),
  new ChatModel(
      name: "Yogita",
      message: "I'm good!",
      time: "10:30 am",
      avatarUrl: "https://avatars3.githubusercontent.com/u/583240?v=4",
      icon: "single"),
  new ChatModel(
      name: "Samman David",
      message: "I'm the fastest man alive!",
      time: "12:30 pm ",
      avatarUrl: "https://avatars3.githubusercontent.com/u/583235?v=4",
      icon: "double"),
  new ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30 pm",
      avatarUrl:
          "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb",
      icon: "double"),
];
