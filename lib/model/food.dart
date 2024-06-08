class Food {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final FoodCategory foodCategory;
  List<Addon> avaibleAddons;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.foodCategory,
    required this.avaibleAddons,
  });
}

enum FoodCategory { burgers, salads, biriyani, desserts, drinks }

class Addon {
  String name;
  double prices;

  Addon({
    required this.name,
    required this.prices,
  });
}
