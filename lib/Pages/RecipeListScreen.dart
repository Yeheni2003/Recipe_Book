import 'package:flutter/material.dart';
import '../Models/Recipe.dart';
import 'RecipeDetailScreen.dart';
import 'AddRecipeScreen.dart';

class RecipeListScreen extends StatefulWidget {
  const RecipeListScreen({super.key});

  @override
  State<RecipeListScreen> createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  String? _selectedCategory;

  final List<Recipe> _recipes = [
    Recipe(
      id: '1',
      title: 'Pasta Carbonara',
      description: 'Classic Italian pasta dish with eggs, cheese, and bacon.',
      imageUrl: 'placeholder',
      ingredients: [
        '200g spaghetti',
        '100g pancetta or bacon',
        '2 large eggs',
        '50g parmesan cheese, grated',
        '1 clove of garlic',
        'Black pepper',
        'Salt'
      ],
      steps: [
        'Cook pasta in salted water until al dente.',
        'Fry pancetta until crispy.',
        'Beat eggs with grated cheese.',
        'Drain pasta and mix with pancetta.',
        'Add egg mixture and stir quickly.',
        'Season with pepper and serve immediately.'
      ],
      cookingTime: 25,
      difficulty: 'Medium',
      category: RecipeCategories.mainCourse,
    ),
    Recipe(
      id: '2',
      title: 'Avocado Toast',
      description: 'Simple and nutritious breakfast with avocado on toast.',
      imageUrl: 'placeholder',
      ingredients: [
        '1 ripe avocado',
        '2 slices of bread',
        'Lemon juice',
        'Red pepper flakes',
        'Salt and pepper'
      ],
      steps: [
        'Toast bread until golden and crisp.',
        'Cut avocado in half and remove pit.',
        'Mash avocado and spread on toast.',
        'Drizzle with lemon juice.',
        'Season with salt, pepper, and red pepper flakes.'
      ],
      cookingTime: 10,
      difficulty: 'Easy',
      category: RecipeCategories.breakfast,
    ),
    Recipe(
      id: '3',
      title: 'Chocolate Brownies',
      description: 'Rich and fudgy chocolate brownies for dessert lovers.',
      imageUrl: 'placeholder',
      ingredients: [
        '200g dark chocolate',
        '175g butter',
        '325g caster sugar',
        '130g flour',
        '3 eggs',
        'Pinch of salt'
      ],
      steps: [
        'Preheat oven to 180°C.',
        'Melt chocolate and butter together.',
        'Whisk in sugar, then eggs one by one.',
        'Fold in flour and salt.',
        'Pour into lined baking tin.',
        'Bake for 25-30 minutes.'
      ],
      cookingTime: 45,
      difficulty: 'Medium',
      category: RecipeCategories.dessert,
    ),
    Recipe(
      id: '4',
      title: 'Greek Salad',
      description: 'Fresh and healthy Mediterranean salad with feta cheese.',
      imageUrl: 'placeholder',
      ingredients: [
        'Cucumber',
        'Tomatoes',
        'Red onion',
        'Green bell pepper',
        'Kalamata olives',
        'Feta cheese',
        'Olive oil',
        'Oregano',
        'Salt and pepper'
      ],
      steps: [
        'Chop cucumber, tomatoes, onion, and bell pepper.',
        'Combine vegetables in a bowl.',
        'Add olives and cubed feta cheese.',
        'Drizzle with olive oil.',
        'Season with oregano, salt, and pepper.',
        'Toss gently and serve.'
      ],
      cookingTime: 15,
      difficulty: 'Easy',
      category: RecipeCategories.salad,
    ),
    Recipe(
      id: '5',
      title: 'Tomato Soup',
      description: 'Creamy homemade tomato soup with fresh basil.',
      imageUrl: 'placeholder',
      ingredients: [
        '1kg ripe tomatoes',
        '1 onion, chopped',
        '2 garlic cloves',
        '500ml vegetable stock',
        '100ml cream',
        'Fresh basil leaves',
        'Olive oil',
        'Salt and pepper'
      ],
      steps: [
        'Sauté onion and garlic in olive oil until soft.',
        'Add chopped tomatoes and cook for 10 minutes.',
        'Add vegetable stock and simmer for 15 minutes.',
        'Blend until smooth.',
        'Stir in cream and season with salt and pepper.',
        'Garnish with fresh basil leaves before serving.'
      ],
      cookingTime: 35,
      difficulty: 'Easy',
      category: RecipeCategories.soup,
    ),
    Recipe(
      id: '6',
      title: 'Spinach and Feta Stuffed Mushrooms',
      description: 'Delicious vegetarian appetizer perfect for parties.',
      imageUrl: 'placeholder',
      ingredients: [
        '12 large mushrooms',
        '150g spinach',
        '100g feta cheese',
        '2 garlic cloves',
        '2 tbsp breadcrumbs',
        '1 tbsp olive oil',
        'Fresh parsley',
        'Salt and pepper'
      ],
      steps: [
        'Preheat oven to 180°C.',
        'Remove mushroom stems and chop finely.',
        'Sauté stems, garlic, and spinach until wilted.',
        'Mix with crumbled feta and breadcrumbs.',
        'Fill mushroom caps with mixture.',
        'Bake for 15-20 minutes until golden.'
      ],
      cookingTime: 30,
      difficulty: 'Medium',
      category: RecipeCategories.appetizer,
    ),
    Recipe(
      id: '7',
      title: 'Vegan Buddha Bowl',
      description: 'Nutritious bowl packed with plant-based goodness.',
      imageUrl: 'placeholder',
      ingredients: [
        '1 cup quinoa',
        '1 sweet potato',
        '1 cup chickpeas',
        '1 avocado',
        'Kale or spinach',
        'Cherry tomatoes',
        'Tahini dressing',
        'Seeds (pumpkin, sesame)',
        'Olive oil',
        'Salt and pepper'
      ],
      steps: [
        'Cook quinoa according to package instructions.',
        'Roast diced sweet potato for 25 minutes.',
        'Drain and rinse chickpeas, then season and roast for 15 minutes.',
        'Arrange quinoa, sweet potato, chickpeas, sliced avocado, and greens in a bowl.',
        'Drizzle with tahini dressing and sprinkle with seeds.'
      ],
      cookingTime: 40,
      difficulty: 'Easy',
      category: RecipeCategories.vegan,
    ),
    Recipe(
      id: '8',
      title: 'Berry Smoothie',
      description: 'Refreshing mixed berry smoothie perfect for breakfast or snack.',
      imageUrl: 'placeholder',
      ingredients: [
        '1 cup mixed berries (strawberries, blueberries, raspberries)',
        '1 banana',
        '1 cup yogurt or plant-based alternative',
        '1/2 cup milk or plant-based alternative',
        '1 tbsp honey or maple syrup (optional)',
        'Ice cubes'
      ],
      steps: [
        'Add all ingredients to a blender.',
        'Blend until smooth and creamy.',
        'Add more liquid if needed to reach desired consistency.',
        'Pour into glasses and serve immediately.'
      ],
      cookingTime: 5,
      difficulty: 'Easy',
      category: RecipeCategories.beverage,
    ),
    Recipe(
      id: '9',
      title: 'Vegetable Stir Fry',
      description: 'Quick and colorful vegetarian stir fry with soy sauce.',
      imageUrl: 'placeholder',
      ingredients: [
        'Broccoli florets',
        'Carrot, julienned',
        'Bell peppers, sliced',
        'Snow peas',
        'Bean sprouts',
        '3 cloves garlic, minced',
        '1 tbsp ginger, grated',
        '3 tbsp soy sauce',
        '1 tbsp sesame oil',
        '1 tsp cornstarch',
        'Cooked rice for serving'
      ],
      steps: [
        'Mix soy sauce, sesame oil, and cornstarch in a small bowl.',
        'Heat oil in a wok or large pan over high heat.',
        'Add garlic and ginger, stir for 30 seconds.',
        'Add vegetables in order of cooking time, starting with the hardest.',
        'Stir-fry until vegetables are crisp-tender.',
        'Pour sauce over vegetables and stir to coat.',
        'Serve hot over rice.'
      ],
      cookingTime: 20,
      difficulty: 'Easy',
      category: RecipeCategories.vegetarian,
    ),
    Recipe(
      id: '10',
      title: 'Beef Lasagna',
      description: 'Classic Italian lasagna with rich meat sauce and cheese.',
      imageUrl: 'placeholder',
      ingredients: [
        '500g ground beef',
        '1 onion, finely chopped',
        '2 garlic cloves, minced',
        '2 cans (400g each) tomatoes',
        '2 tbsp tomato paste',
        '1 tsp dried oregano',
        'Lasagna noodles',
        '250g ricotta cheese',
        '200g mozzarella cheese, grated',
        '50g parmesan cheese, grated',
        'Fresh basil',
        'Salt and pepper'
      ],
      steps: [
        'Brown the beef with onion and garlic.',
        'Add tomatoes, tomato paste, oregano, salt, and pepper. Simmer for 30 minutes.',
        'Cook lasagna noodles according to package instructions.',
        'Layer meat sauce, noodles, and cheeses in a baking dish.',
        'Repeat layers, ending with cheese on top.',
        'Bake at 180°C for 25-30 minutes until golden and bubbling.',
        'Let stand for 10 minutes before serving.'
      ],
      cookingTime: 90,
      difficulty: 'Medium',
      category: RecipeCategories.dinner,
    ),
    Recipe(
      id: '11',
      title: 'Pancakes',
      description: 'Fluffy homemade pancakes perfect for a weekend breakfast.',
      imageUrl: 'placeholder',
      ingredients: [
        '200g all-purpose flour',
        '2 tbsp sugar',
        '1 tsp baking powder',
        '1/2 tsp baking soda',
        '1/4 tsp salt',
        '1 egg',
        '300ml buttermilk or milk',
        '30g butter, melted',
        'Maple syrup for serving',
        'Fresh berries (optional)'
      ],
      steps: [
        'Whisk together dry ingredients in a large bowl.',
        'In another bowl, beat egg, then add buttermilk and melted butter.',
        'Pour wet ingredients into dry ingredients and stir just until combined.',
        'Heat a non-stick pan over medium heat.',
        'Pour 1/4 cup batter for each pancake.',
        'Cook until bubbles form on surface, then flip and cook other side.',
        'Serve with maple syrup and fresh berries.'
      ],
      cookingTime: 20,
      difficulty: 'Easy',
      category: RecipeCategories.breakfast,
    ),
    Recipe(
      id: '12',
      title: 'Chicken Tikka Masala',
      description: 'Flavorful Indian curry with tender chicken in a creamy tomato sauce.',
      imageUrl: 'placeholder',
      ingredients: [
        '500g chicken breast, cubed',
        '1 cup yogurt',
        '2 tbsp lemon juice',
        '4 tsp cumin',
        '1 tsp cinnamon',
        '2 tsp cayenne pepper',
        '2 tsp black pepper',
        '1 tbsp ginger, minced',
        '1 tbsp salt',
        '3 tbsp butter',
        '1 onion, diced',
        '3 garlic cloves, minced',
        '1 can (400g) tomato sauce',
        '1 cup heavy cream',
        'Fresh cilantro',
        'Rice for serving'
      ],
      steps: [
        'Mix yogurt, lemon juice, and spices in a bowl.',
        'Add chicken and marinate for at least 1 hour (preferably overnight).',
        'Preheat oven to 200°C. Cook chicken for 20 minutes.',
        'Melt butter in a large saucepan. Add onion and garlic, cook until soft.',
        'Add tomato sauce and cream. Simmer for 20 minutes.',
        'Add cooked chicken to the sauce and heat through.',
        'Garnish with cilantro and serve with rice.'
      ],
      cookingTime: 60,
      difficulty: 'Medium',
      category: RecipeCategories.dinner,
    ),
  ];

  List<Recipe> get _filteredRecipes {
    if (_selectedCategory == null) {
      return _recipes;
    }
    return _recipes.where((recipe) => recipe.category == _selectedCategory).toList();
  }

  void _addNewRecipe(Recipe recipe) {
    setState(() {
      _recipes.add(recipe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipe Book'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Column(
        children: [
          // Category Filter Chips
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: FilterChip(
                    label: const Text('All'),
                    selected: _selectedCategory == null,
                    onSelected: (selected) {
                      setState(() {
                        _selectedCategory = null;
                      });
                    },
                  ),
                ),
                ...RecipeCategories.getCategories().map((category) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: FilterChip(
                      label: Text(category),
                      selected: _selectedCategory == category,
                      onSelected: (selected) {
                        setState(() {
                          _selectedCategory = selected ? category : null;
                        });
                      },
                    ),
                  );
                }).toList(),
              ],
            ),
          ),

          // Recipe List
          Expanded(
            child: _filteredRecipes.isEmpty
                ? Center(
              child: _recipes.isEmpty
                  ? const Text('No recipes yet! Add some to get started.')
                  : const Text('No recipes in this category. Add some!'),
            )
                : ListView.builder(
              itemCount: _filteredRecipes.length,
              itemBuilder: (ctx, index) {
                final recipe = _filteredRecipes[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 3,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => RecipeDetailScreen(recipe: recipe),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          color: Colors.grey[300],
                          child: Center(
                            child: Icon(
                              Icons.restaurant,
                              size: 50,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    label: Text(
                                      recipe.category,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    backgroundColor: _getCategoryColor(recipe.category),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                recipe.description,
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.timer, size: 16),
                                      const SizedBox(width: 4),
                                      Text('${recipe.cookingTime} min'),
                                    ],
                                  ),
                                  Text(
                                    recipe.difficulty,
                                    style: TextStyle(
                                      color: recipe.difficulty == 'Easy'
                                          ? Colors.green
                                          : recipe.difficulty == 'Medium'
                                          ? Colors.orange
                                          : Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => AddRecipeScreen(addRecipe: _addNewRecipe),
            ),
          );
        },
        child: const Icon(Icons.add),
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