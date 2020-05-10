class DashboardData {
  String title;
  String description;
  // String imagePath;
  final List<DashboardData> data;

  DashboardData({
    this.title,
    this.description,
    //  this.imagePath,
    this.data,
  });

  static List<DashboardData> fetchData() {
    return [
      DashboardData(
        description: 'try out this new app riehgdfjkwpe34oi5tyg weoirtjfdgkls;',
        title: 'Title',
        //imagePath: 'assets/pay.jpeg',
      ),
      DashboardData(
        description: 'try out this new app todat and tewoidfhlbvjcnm',
        title: 'Title Two',
        //imagePath: 'assets/pay.jpeg',
      ),
      DashboardData(
        description: 'try out this new app uiwefdhvco qweiofguh',
        title: 'Title Three',
        //imagePath: 'assets/pay.jpeg',
      ),
    ];
  }
}
