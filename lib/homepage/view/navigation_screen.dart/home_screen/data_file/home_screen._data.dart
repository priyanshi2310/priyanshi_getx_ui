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
    imagePath: 'images/BG.png',
    title: 'Krispy Creme',
    detail: 'St Georgece Terrace, Perth',
  ),
  HomeScreenDataModel(
    imagePath: 'images/food.png',
    title: 'Mario Italiano',
    detail: 'Hay street , Perth City',
  ),
  HomeScreenDataModel(
    imagePath: 'images/BG.png',
    title: 'Krispy Creme',
    detail: 'St Georgece Terrace, Perth',
  ),
];
