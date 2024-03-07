import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 2
    return MaterialApp(
      // 3
      title: 'Recipe Calculator',
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSwatch(
        // 4
         // primarySwatch: Colors.white,
          primaryColor: Colors.white
          //accentColor: Colors.black,
     // ),
      ),
    // 5
      home: MyHomePage(title: 'Recipe Calculator'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      // 3
      body: SafeArea(
        child : Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),// 4
    child: ListView.builder(
      itemCount: Recipe.samples.length,
      // 6
      itemBuilder: (BuildContext context, int index) {
        // 7
        // 7
        return GestureDetector(
          // 8
          onTap: () {
            // 9
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) {
                  // 10
                  return RecipeDetail(recipe: Recipe.samples[index]);
                },
              ),
            );
          },
          // 11
          child: buildRecipeCard(Recipe.samples[index]),
        );
      },
    ),
      ),
      ),
    );
  }
}
Widget buildRecipeCard(Recipe recipe) {
  return Card(
      // 1
      elevation: 2.0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)),
    // 3
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      // 4
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          // 5
          const SizedBox(
            height: 14.0,
          ),
          // 6
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}