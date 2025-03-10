import 'package:cloud_project/model/catory_model.dart';
import 'package:cloud_project/model/product_model.dart';

import 'features_model.dart';

class AppsData {
  static List<FeaturesModel> get featuresList => [
        FeaturesModel(
            title: "Wireless charging",
            subTitle: "Full Battery in no time",
            image: "assets/features/charging.png"),
        FeaturesModel(
            title: "Super Fast CPU",
            subTitle: "Powerful Performance",
            image: "assets/features/cpu.png"),
        FeaturesModel(
            title: "128 GB Harddisk",
            subTitle: "More Content",
            image: "assets/features/harddisk.png"),
        FeaturesModel(
            title: "64 MP Camara",
            subTitle: "With super Macro Lens",
            image: "assets/features/camera.png"),
      ];

  static List<FeaturesModel> get additionalFeaturesList => [
        FeaturesModel(
            title: "FREE SHIPPING",
            subTitle: "In 2-3 Days",
            image: "assets/addition_features/shipping.png"),
        FeaturesModel(
            title: "FREE RETURNS",
            subTitle: "No Questions Asked",
            image: "assets/addition_features/return.png"),
        FeaturesModel(
            title: "FREE SUPPORT",
            subTitle: "30 Days",
            image: "assets/addition_features/support.png"),
      ];

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
