class HorizontalCardData {
  final String brand;
  final String modelName;
  final String description;
  final String price;
  final String imagePath;
  final String cornerImagePath;

  HorizontalCardData({
    required this.brand,
    required this.modelName,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.cornerImagePath,
  });
}

class VerticalCardData {
  final String brand;
  final String modelName;
  final String price;
  final String imagePath;
  final String cornerImagePath;

  VerticalCardData({
    required this.brand,
    required this.modelName,
    required this.price,
    required this.imagePath,
    required this.cornerImagePath,
  });
}
