import 'package:chat_app/screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
    // demoProjectId: "com.example.chat_app",
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 35, 12, 138),
        ),
      ),
      home: AuthScreen(),
    );
  }
}
