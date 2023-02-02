class SubjectModel {
  String name;
  String image;
  double price;
  double rating;
  SubjectModel({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
  });
}

List<SubjectModel> subjects = [
  SubjectModel(
      name: "Photography",
      image:
          "https://img.icons8.com/external-justicon-lineal-color-justicon/256/external-camera-artist-studio-justicon-lineal-color-justicon.png",
      price: 20,
      rating: 4.7),
  SubjectModel(
      name: "Git Github",
      image: "https://img.icons8.com/fluency/256/code-fork.png",
      price: 15,
      rating: 4.7),
  SubjectModel(
      name: "Spritual",
      image: "https://img.icons8.com/fluency/256/pranava.png",
      price: 0,
      rating: 4.7),
  SubjectModel(
      name: "Science",
      image: "https://img.icons8.com/fluency/256/test-tube.png",
      price: 5,
      rating: 4.7)
];
