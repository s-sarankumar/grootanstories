class StoryModel{
  final String name;
  final String story;
  final String author;
  final String date;

  StoryModel({required this.name,required this.story, required this.author,required this.date});
}

List<StoryModel> data = [
  new StoryModel(
    name: "Man vs God",
    story: "Man and god met one day and both said \"my creation.\"",
    author: "Author: Saran Krish",
    date: "12-10-2020",
  ),
  new StoryModel(
      name: "Hunger",
      story: "He asked \"Are you Hindu or Muslim?\" Response came, \"I am hungry,sir.\"",
      author: "Author: Mr Foody",
      date: "01-03-2020"
  ),
  new StoryModel(
      name: "Travel",
      story: "I traveled around the world for a year and only felt lost once I arrived home",
      author: "Author: Mr Traveller",
      date: "07-01-2021"
  ),
  new StoryModel(
      name: "Change",
      story: "\"Don't ask for the change.\" Bring the change Said the bus conductor in a very annoyed tone",
      author: "Author: Poor Bus Conductor",
      date: "17-12-2019"
  ),
  new StoryModel(
      name: "Love",
      story: "Love isn't perfect. That's the most perfect thing about love.",
      author: "Author: Mr Fool",
      date: "01-04-2021"
  ),
];