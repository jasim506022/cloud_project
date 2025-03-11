class FeatureModel {
  final String title;
  final String subTitle;
  final String image;

  // Use named parameters and required keyword for non-nullable fields
  FeatureModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}
