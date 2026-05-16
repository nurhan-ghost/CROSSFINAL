import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Color/app_colors.dart';
import 'firebase_options.dart';

import 'home.dart';
import 'auth/auth_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: SneakerStoreApp(),
    ),
  );
}

class SneakerStoreApp extends StatefulWidget {
  const SneakerStoreApp({
    super.key,
  });

  @override
  State<SneakerStoreApp> createState() => _SneakerStoreAppState();
}

class _SneakerStoreAppState extends State<SneakerStoreApp> {
  bool isLightMode = true;

  AppThemeSelection colorSelected = AppThemeSelection.values.first;

  void changeColor(int value) {
    setState(() {
      colorSelected = AppThemeSelection.values[value];
    });
  }

  void changeTheme(
    bool useLightMode,
  ) {
    setState(() {
      isLightMode = useLightMode;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    const appTitle = 'Sneaker Store';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorSelected.color,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorSelected.color,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ),
      themeMode: isLightMode ? ThemeMode.light : ThemeMode.dark,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (
          context,
          snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          // USER LOGGED IN
          if (snapshot.hasData) {
            return Home(
              appTitle: appTitle,
              changeColor: changeColor,
              changeTheme: changeTheme,
              colorSelected: colorSelected,
            );
          }

          // NOT LOGGED IN
          return const AuthScreen();
        },
      ),
    );
  }
}
