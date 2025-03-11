class ProductModel {
  final String title;
  final double price;
  final List<String> image;
  final String category;

  ProductModel(
      {required this.title,
      required this.image,
      required this.price,
      required this.category});
}
