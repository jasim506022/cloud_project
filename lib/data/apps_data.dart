import '../res/app_image.dart';
import '../model/category_model.dart';
import '../model/feature_model.dart';
import '../model/product_model.dart';

class AppsData {
  // Main features
  static List<FeatureModel> get mainFeaturesList => [
        FeatureModel(
          title: "Wireless charging",
          subTitle: "Full Battery in no time",
          image: AppImage.chargingImage,
        ),
        FeatureModel(
          title: "Super Fast CPU",
          subTitle: "Powerful Performance",
          image: AppImage.cpuImage,
        ),
        FeatureModel(
          title: "128 GB Harddisk",
          subTitle: "More Content",
          image: AppImage.harddiskImage,
        ),
        FeatureModel(
          title: "64 MP Camera",
          subTitle: "With super Macro Lens",
          image: AppImage.cameraImage,
        ),
      ];

// Additional Features
  static List<FeatureModel> additionalFeaturesList = [
    FeatureModel(
      title: "FREE SHIPPING",
      subTitle: "In 2-3 Days",
      image: AppImage.freeShippingImage,
    ),
    FeatureModel(
      title: "FREE RETURNS",
      subTitle: "No Questions Asked",
      image: AppImage.freeReturnsImage,
    ),
    FeatureModel(
      title: "FREE SUPPORT",
      subTitle: "30 Days",
      image: AppImage.freeSupportImage,
    ),
  ];

// categories
  static List<CategoryModel> get categoriesList => [
        CategoryModel(title: "Desks", price: 85.00, image: [
          "assets/products/Desks/desk_one.jpg",
          "assets/products/Desks/desk_two.jpg",
          "assets/products/Desks/desk_three.jpg"
        ]),
        CategoryModel(title: "Lamps", price: 1.00, image: [
          "assets/products/lamps/lamp_one.jpg",
          "assets/products/lamps/lamp_two.jpg",
          "assets/products/lamps/lamp_three.jpg",
        ]),
        CategoryModel(title: "Services", price: 1.00, image: [
          "assets/products/Service/service_one.jpg",
          "assets/products/Service/service_two.jpg",
          "assets/products/Service/service_three.jpg",
        ]),
      ];

//List of products
  static List<ProductModel> get productList => [
        ProductModel(
            title: "Desks & Computer Desks ",
            category: "Desks",
            price: 85.00,
            image: [
              "assets/products/Desks/desk_one.jpg",
              "assets/products/Desks/desk_two.jpg",
              "assets/products/Desks/desk_three.jpg"
            ]),
        ProductModel(
            title: "Desk Table Lamp",
            category: "Lamps",
            price: 1.00,
            image: [
              "assets/products/lamps/lamp_one.jpg",
              "assets/products/lamps/lamp_two.jpg",
              "assets/products/lamps/lamp_three.jpg",
            ]),
        ProductModel(
            title: "Computer Repair Services",
            category: "Services",
            price: 1.00,
            image: [
              "assets/products/Service/service_one.jpg",
              "assets/products/Service/service_two.jpg",
              "assets/products/Service/service_three.jpg",
            ]),
        ProductModel(
            title: "Desks & Computer Desks ",
            category: "Desks",
            price: 85.00,
            image: [
              "assets/products/Desks/desk_one.jpg",
              "assets/products/Desks/desk_two.jpg",
              "assets/products/Desks/desk_three.jpg"
            ]),
        ProductModel(
            title: "Desk Table Lamp",
            category: "Lamps",
            price: 1.00,
            image: [
              "assets/products/lamps/lamp_one.jpg",
              "assets/products/lamps/lamp_two.jpg",
              "assets/products/lamps/lamp_three.jpg",
            ]),
        ProductModel(
            title: "Computer Repair Services",
            category: "Services",
            price: 1.00,
            image: [
              "assets/products/Service/service_one.jpg",
              "assets/products/Service/service_two.jpg",
              "assets/products/Service/service_three.jpg",
            ]),
        ProductModel(
            title: "Desks & Computer Desks ",
            category: "Desks",
            price: 85.00,
            image: [
              "assets/products/Desks/desk_one.jpg",
              "assets/products/Desks/desk_two.jpg",
              "assets/products/Desks/desk_three.jpg"
            ]),
        ProductModel(
            title: "Desk Table Lamp",
            category: "Lamps",
            price: 1.00,
            image: [
              "assets/products/lamps/lamp_one.jpg",
              "assets/products/lamps/lamp_two.jpg",
              "assets/products/lamps/lamp_three.jpg",
            ]),
        ProductModel(
            title: "Computer Repair Services",
            category: "Services",
            price: 1.00,
            image: [
              "assets/products/Service/service_one.jpg",
              "assets/products/Service/service_two.jpg",
              "assets/products/Service/service_three.jpg",
            ]),
        ProductModel(
            title: "Desks & Computer Desks ",
            category: "Desks",
            price: 85.00,
            image: [
              "assets/products/Desks/desk_one.jpg",
              "assets/products/Desks/desk_two.jpg",
              "assets/products/Desks/desk_three.jpg"
            ]),
        ProductModel(
            title: "Desk Table Lamp",
            category: "Lamps",
            price: 1.00,
            image: [
              "assets/products/lamps/lamp_one.jpg",
              "assets/products/lamps/lamp_two.jpg",
              "assets/products/lamps/lamp_three.jpg",
            ]),
        ProductModel(
            title: "Computer Repair Services",
            category: "Services",
            price: 1.00,
            image: [
              "assets/products/Service/service_one.jpg",
              "assets/products/Service/service_two.jpg",
              "assets/products/Service/service_three.jpg",
            ])
      ];
}
