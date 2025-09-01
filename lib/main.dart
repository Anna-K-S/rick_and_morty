import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rick_and_morty/bloc/characters/characters_bloc.dart';
import 'package:rick_and_morty/bloc/favorites/favorites_bloc.dart';
import 'package:rick_and_morty/data/repository/character_repository.dart';
import 'package:rick_and_morty/data/repository/favorites_characters_repository.dart';
import 'package:rick_and_morty/firebase_options.dart';
import 'package:rick_and_morty/screens/base_screen.dart';
import 'package:rick_and_morty/service/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> requestIOSPermissions() async {
  final iosImplementation =
      flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>();

  await iosImplementation?.requestPermissions(
    alert: true,
    badge: true,
    sound: true,
  );
}

Future<void> requestAndroidPermissions() async {
  final status = await Permission.notification.status;
  if (!status.isGranted) {
    await Permission.notification.request();
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  final sharedPreferences = await SharedPreferences.getInstance();
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  await messaging.requestPermission(alert: true, badge: true, sound: true);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    message;
  });

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});

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
          create: (context) => FavoritesRepository(sharedPreferences!),
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
