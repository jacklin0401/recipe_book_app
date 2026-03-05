import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              recipe.imagePath,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Ingredients",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ...recipe.ingredients.map(
              (ingredient) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("• $ingredient"),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Instructions",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(recipe.instructions),
            ),
          ],
        ),
      ),
    );
  }
}