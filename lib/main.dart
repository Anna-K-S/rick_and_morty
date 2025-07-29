import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/bloc/favorites/favorites_bloc.dart';
import 'package:rick_and_morty/screens/base_screen.dart';
import 'package:rick_and_morty/data/repository/character_repository.dart';
import 'package:rick_and_morty/data/repository/favorites_characters_repository.dart';
import 'package:rick_and_morty/service/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences: sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences? sharedPreferences;
  const MyApp({super.key, this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => Api(Dio())),
        RepositoryProvider<ICharacterRepository>(
          create: (context) => CharacterRepository(context.read<Api>()),
        ),
        RepositoryProvider<IFavoritesRepository>(
          create: (_) => FavoritesRepository(sharedPreferences!),
        ),
      ],
      child: MaterialApp(
        title: 'Rick and Morty',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            brightness: Brightness.dark,
          ),
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CharactersBloc(
                context.read<ICharacterRepository>(),
              )..add(const CharactersEvent.started()),
            ),
            BlocProvider(
              lazy: false,
              create: (context) => FavoritesBloc(
                context.read<IFavoritesRepository>(),
              )..add(const FavoritesCharactersEvent.loaded()),
            ),
          ],
          child: const HomeScreen(),
        ),
      ),
    );
  }
}
