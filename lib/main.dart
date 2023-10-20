import 'package:flutter/material.dart';
import 'package:peliculas_20233/providers/movies_provider.dart';
import 'package:peliculas_20233/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => MoviesProvider(),
        //no se cree de manera peresossa al lanzar

        lazy: false,

      )
    ],
    child: MyApp(),
    
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen(),
      },
    );
  }
}