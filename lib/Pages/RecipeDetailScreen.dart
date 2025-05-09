import 'package:flutter/material.dart';
import '../Models/Recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Breakfast':
        return Colors.amber.shade100;
      case 'Lunch':
        return Colors.orange.shade100;
      case 'Dinner':
        return Colors.deepOrange.shade100;
      case 'Appetizer':
        return Colors.lime.shade100;
      case 'Soup':
        return Colors.brown.shade100;
      case 'Main Course':
        return Colors.red.shade100;
      case 'Salad':
        return Colors.green.shade100;
      case 'Dessert':
        return Colors.pink.shade100;
      case 'Beverage':
        return Colors.blue.shade100;
      case 'Vegetarian':
        return Colors.teal.shade100;
      case 'Vegan':
        return Colors.lightGreen.shade100;
      default:
        return Colors.grey.shade100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: Center(
                child: Icon(
                  Icons.restaurant,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          recipe.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Chip(
                        label: Text(recipe.category),
                        backgroundColor: _getCategoryColor(recipe.category),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    recipe.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    children: [
                      Chip(
                        label: Text('${recipe.cookingTime} min'),
                        avatar: const Icon(Icons.timer, size: 16),
                      ),
                      Chip(
                        label: Text(recipe.difficulty),
                        backgroundColor: recipe.difficulty == 'Easy'
                            ? Colors.green[100]
                            : recipe.difficulty == 'Medium'
                            ? Colors.orange[100]
                            : Colors.red[100],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...recipe.ingredients.map((ingredient) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.fiber_manual_record, size: 12),
                          const SizedBox(width: 8),
                          Text(ingredient),
                        ],
                      ),
                    );
                  }).toList(),
                  const SizedBox(height: 20),
                  const Text(
                    'Steps',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...recipe.steps.asMap().entries.map((entry) {
                    final index = entry.key;
                    final step = entry.value;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(child: Text(step)),
                        ],
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}