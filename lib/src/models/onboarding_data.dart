class OnBoardingData {
  String title;
  String description;
  String imagePath;
  final List<OnBoardingData> data;

  OnBoardingData({
    this.title,
    this.description,
    this.imagePath,
    this.data,
  });

  static List<OnBoardingData> fetchData() {
    return [
      OnBoardingData(
        description: 'try out this new app',
        title: 'Title',
        imagePath: 'assets/payed.jpeg',
      ),
      OnBoardingData(
        description: 'try out this new app',
        title: 'Title Two',
        imagePath: 'assets/payed.jpeg',
      ),
      OnBoardingData(
        description: 'try out this new app',
        title: 'Title Three',
        imagePath: 'assets/payed.jpeg',
      ),
    ];
  }
}
