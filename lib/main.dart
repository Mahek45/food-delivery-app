import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_deliver/services/auth/auth_gate.dart';
import 'package:food_deliver/firebase_options.dart';
import 'package:food_deliver/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:food_deliver/models/restaurant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // ✅ Ensure Firebase initialization is wrapped in try-catch
  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    debugPrint("Firebase Initialization Error: $e");
  }

  runApp(
    MultiProvider(
      providers: [
        // Theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        // Restaurant provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData, // ✅ Ensure theme is not null
      home: const AuthGate(), // ✅ Ensure `AuthGate()` handles user authentication properly
    );
  }
}
