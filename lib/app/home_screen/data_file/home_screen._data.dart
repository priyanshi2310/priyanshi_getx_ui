class HomeScreenDataModel {
  final String imagePath;
  final String title;
  final String detail;

  HomeScreenDataModel({
    required this.imagePath,
    required this.title,
    required this.detail,
  });
}

final List<HomeScreenDataModel> homeScreenData = [
  HomeScreenDataModel(
    imagePath: 'images/feature9.png',
    title: 'Krispy Creme',
    detail: 'St Georgece Terrace, Perth',
  ),
  HomeScreenDataModel(
    imagePath: 'images/feature8.png',
    title: 'Mario Italiano',
    detail: 'Hay street , Perth City',
  ),
  HomeScreenDataModel(
    imagePath: 'images/food.png',
    title: 'Krispy Creme',
    detail: 'St Georgece Terrace, Perth',
  ),
];
