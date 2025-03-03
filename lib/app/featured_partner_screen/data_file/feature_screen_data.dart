class DetailScreenDataModel {
  final String imagePath;
  final String title;

  DetailScreenDataModel({
    required this.imagePath,
    required this.title,
  });
}

final List<DetailScreenDataModel> featuredScreen = [
  DetailScreenDataModel(
    imagePath: 'images/food.png',
    title: 'Tacos Nanchas',
  ),
  DetailScreenDataModel(
    imagePath: 'images/BG.png',
    title: 'McDonald\'s',
  ),
  DetailScreenDataModel(
    imagePath: 'images/food.png',
    title: 'KFC Foods',
  ),
  DetailScreenDataModel(
    imagePath: 'images/feature12.png',
    title: 'Cafe MayField’s',
  ),
  DetailScreenDataModel(
    imagePath: 'images/featyre7.png',
    title: 'McDonald\'s',
  ),
  DetailScreenDataModel(
    imagePath: 'images/feature13.png',
    title: 'Coffe Cafe',
  ),
];

class DetailScreenModel {
  final String imagePath;
  final String title;

  DetailScreenModel({
    required this.imagePath,
    required this.title,
  });
}

final List<DetailScreenDataModel> DetailScreen = [
  DetailScreenDataModel(
    imagePath: 'images/feature14.png',
    title: 'Cookie Sandwich',
  ),
  DetailScreenDataModel(
    imagePath: 'images/feature15.png',
    title: 'Chow Fun',
  ),
  DetailScreenDataModel(
    imagePath: 'images/food.png',
    title: 'Dim SUm',
  ),
];
