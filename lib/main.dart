import 'package:flutter/material.dart';
import 'package:screens/screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'utils/app_routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontFamily: 'RobotoCondensed', 
          fontSize: 20,)
        ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings){
      //   if(settings.name == '/alguma-coisa') {
      //     return null;
      //   } else if(settings.name == '/outra-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(
      //       builder: (_) {
      //         return CategoriesScreen();
      //       }
      //     );
      //   }

      // },
      // onUnknownRoute: (settings) {
      //     return MaterialPageRoute(
      //       builder: (_) {
      //         return CategoriesScreen();
      //       }
      //     );
      // },
    );
  }
}