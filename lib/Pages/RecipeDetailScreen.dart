import 'package:flutter/material.dart';
import '../Models/Recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

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
            // Hero image
            Container(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                recipe.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (ctx, error, stackTrace) =>
                const Center(child: Icon(Icons.broken_image, size: 60)),
              ),
            ),

            // Recipe header and info
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
                  const SizedBox(height: 8),
                  Text(
                    recipe.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Recipe info - time and difficulty
                  // Wrap in SingleChildScrollView to fix overflow
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.timer, size: 18),
                              const SizedBox(width: 4),
                              Text('${recipe.cookingTime} min'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: recipe.difficulty == 'Easy'
                                ? Colors.green[100]
                                : recipe.difficulty == 'Medium'
                                ? Colors.orange[100]
                                : Colors.red[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            recipe.difficulty,
                            style: TextStyle(
                              color: recipe.difficulty == 'Easy'
                                  ? Colors.green[800]
                                  : recipe.difficulty == 'Medium'
                                  ? Colors.orange[800]
                                  : Colors.red[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Ingredients section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Wrap the ingredient list in a SingleChildScrollView if needed
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: recipe.ingredients.length,
                    itemBuilder: (ctx, i) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.fiber_manual_record, size: 12),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              recipe.ingredients[i],
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Steps section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Steps',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: recipe.steps.length,
                    itemBuilder: (ctx, i) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '${i + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              recipe.steps[i],
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Add some bottom padding for better scrolling experience
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
}