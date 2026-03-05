import '../models/recipe.dart';

final List<Recipe> sampleRecipes = [
  Recipe(
    name: "Spaghetti Pasta",
    imagePath: "assets/images/pasta.jpg",
    ingredients: [
      "200g spaghetti",
      "Tomato sauce",
      "Garlic",
      "Olive oil"
    ],
    instructions: "Boil pasta. Cook sauce. Mix together and serve.",
  ),
  Recipe(
    name: "Garden Salad",
    imagePath: "assets/images/salad.jpg",
    ingredients: [
      "Lettuce",
      "Tomatoes",
      "Cucumber",
      "Olive oil"
    ],
    instructions: "Chop vegetables. Toss together. Add dressing.",
  ),
];