
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants.dart';
import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  
  runApp(
    const ProviderScope(
      child: SneakerStoreApp(),
    ),
  );
}

class SneakerStoreApp extends StatefulWidget {
  const SneakerStoreApp({super.key});

  @override
  State<SneakerStoreApp> createState() =>
      _SneakerStoreAppState();
}

class _SneakerStoreAppState
    extends State<SneakerStoreApp> {
  ColorSelection colorSelected =
      ColorSelection.whitePurple;

  void changeColor(int value) {
    setState(() {
      colorSelected =
          ColorSelection.values[value];
    });
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Sneaker Store';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorSelected.color,
        brightness: Brightness.light,

        scaffoldBackgroundColor:
            Colors.white,

        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),

        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20),
          ),
        ),
      ),

      home: Home(
        appTitle: appTitle,
        changeColor: changeColor,
        colorSelected: colorSelected,
        changeTheme: (bool useLightMode) {},
      ),
    );
  }
}