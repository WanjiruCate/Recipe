class OnBoardingData {
  String title;
  String description;
 // String imagePath;
  final List<OnBoardingData> data;

  OnBoardingData({
    this.title,
    this.description,
  //  this.imagePath,
    this.data,
  });

  static List<OnBoardingData> fetchData() {
    return [
      OnBoardingData(
        description: 'try out this new app riehgdfjkwpe34oi5tyg weoirtjfdgkls;',
        title: 'Title',
        //imagePath: 'assets/pay.jpeg',
      ),
      OnBoardingData(
        description: 'try out this new app todat and tewoidfhlbvjcnm',
        title: 'Title Two',
        //imagePath: 'assets/pay.jpeg',
      ),
      OnBoardingData(
        description: 'try out this new app uiwefdhvco qweiofguh',
        title: 'Title Three',
        //imagePath: 'assets/pay.jpeg',
      ),
    ];
  }
}
