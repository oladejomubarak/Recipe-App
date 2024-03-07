

class Recipe {
  int servings;
  List<Ingredient> ingredients;
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl, this.servings,
      this.ingredients);

  static List<Recipe> samples = [
    Recipe('Amala and Gbegiri',
        'assets/amala-and-gbegiri.png',8,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],),
    Recipe('Bucatini',
        'assets/bucatini.jpg',4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],),
    Recipe('Eba and Vegetable Soup',
        'assets/eba-and-vegetable-soup.jpg',4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],),
    Recipe('Fried Rice with Chicken',
        'assets/fried-rice-and-chicken.jpg',4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],),
    Recipe('Jollof Rice with Chicken',
        'assets/Jollof-Rice-With-Chicken.jpg',4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],),
    Recipe('Meat Pie',
        'assets/meat-pie-removebg-preview.png',4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
        Ingredient(4, '', 'Frozen Meatballs'),
        Ingredient(0.5, 'jar', 'sauce'),
      ],),
  ];
}
class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(this.quantity, this.measure, this.name);
}