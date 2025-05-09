class Recipe {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int cookingTime;
  final String difficulty;
  final String category; // Added category field

  Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.cookingTime,
    required this.difficulty,
    required this.category, // Added to constructor
  });
}

// Available recipe categories
class RecipeCategories {
  static const String breakfast = 'Breakfast';
  static const String lunch = 'Lunch';
  static const String dinner = 'Dinner';
  static const String appetizer = 'Appetizer';
  static const String soup = 'Soup';
  static const String mainCourse = 'Main Course';
  static const String salad = 'Salad';
  static const String dessert = 'Dessert';
  static const String beverage = 'Beverage';
  static const String vegetarian = 'Vegetarian';
  static const String vegan = 'Vegan';

  static List<String> getCategories() {
    return [
      breakfast,
      lunch,
      dinner,
      appetizer,
      soup,
      mainCourse,
      salad,
      dessert,
      beverage,
      vegetarian,
      vegan
    ];
  }
}