import 'package:flutter/material.dart';
import 'package:to_do_app/core/application_theme.dart';
import 'package:to_do_app/core/route_generator.dart';
import 'package:to_do_app/core/route_name.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      initialRoute: RouteNames.initial,
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      theme: ApplicationTheme.themeDataLight,
      debugShowCheckedModeBanner: false,
    );
  }
}
