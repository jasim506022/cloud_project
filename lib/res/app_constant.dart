import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class AppConstant {
  // Navigation Items
  static final List<Map<String, dynamic>> navItems = [
    {"icon": Icons.home, "label": "Home"},
    {"icon": Icons.search, "label": "Search"},
    {"icon": Icons.favorite, "label": "WishList"},
    {"icon": Icons.person, "label": "Account"},
  ];

  static final List<Map<String, dynamic>> additionalNavItems = [
    {"icon": Icons.local_offer_outlined, "label": "Offers"},
    {"icon": Icons.branding_watermark_outlined, "label": "Brands"},
    {"icon": Icons.category_outlined, "label": "Category"},
    {"icon": Icons.shopping_cart_outlined, "label": "Orders"},
  ];

// Features
  static final List<String> features = [
    "24*7 Customer Support",
    "Cash On Delivery",
    "30 days replacement",
    "Fast Delivery",
    "12K+ happy Customers",
    "100% secure payment",
    "Quality Products",
    "Easy Returns",
  ];

  // Social Media Icons
  static final List<Map<String, String>> socialMediaIcons = [
    {'name': 'Facebook', 'asset': 'assets/social/facebook.png'},
    {'name': 'Twitter', 'asset': 'assets/social/twitter.png'},
    {'name': 'Instagram', 'asset': 'assets/social/instagram.png'},
    {'name': 'LinkedIn', 'asset': 'assets/social/linkedin.png'},
  ];

  // Categories
  static final List<String> tabCategoryList = ["Desks", "Lamps", "Services"];
  static final List<String> footerCategoris = [
    "Athletic Apparel",
    "Sneakers & Athletic",
    "Sunglasses & Eyewear",
    "Jeans",
    "Others"
  ];
  static final List<Map<String, String>> categoriesList = [
    {"name": "Desks", "image": "assets/categories/Desks.png"},
    {"name": "Furnitures", "image": "assets/categories/Furnitures.png"},
    {"name": "Boxes", "image": "assets/categories/Boxes.png"},
    {"name": "Drawers", "image": "assets/categories/Drawers.png"},
    {"name": "Cabinets", "image": "assets/categories/Cabinets.png"},
    {"name": "Bins", "image": "assets/categories/Bins.png"},
    {"name": "Lamps", "image": "assets/categories/Lamps.png"},
    {"name": "Services", "image": "assets/categories/Services.png"},
    {"name": "Multimedia", "image": "assets/categories/Multimedia.png"},
  ];

// Profile Options
  static final List<Map<String, dynamic>> profileOptionsList = [
    {"icon": Icons.shopping_cart_outlined, "title": "My Cart (0)"},
    {"icon": Icons.favorite_border_outlined, "title": "My WishList (0)"},
    {"icon": IconlyBroken.profile, "title": "My Account"},
    {"icon": Icons.menu_outlined, "title": "My Orders"},
    {"icon": IconlyBroken.edit, "title": "Edit Profile"},
    {"icon": Icons.payment, "title": "Manage Payment Methods"},
    {"icon": Icons.password_outlined, "title": "Change Password"},
    {
      "icon": Icons.logout,
      "title": "Logout",
    }
  ];
}
