import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'utils/theme.dart';

import 'screens/login_screen.dart';
import 'screens/events_screen.dart';
import 'screens/sermons_screen.dart';
import 'screens/contributions_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/settings_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChurchApp());
}

class ChurchApp extends StatelessWidget {
  const ChurchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Church of God App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/sermons': (context) => SermonsScreen(),
        '/events': (context) => EventsScreen(),
        '/contributions': (context) => ContributionsScreen(),
        '/notifications': (context) => NotificationsScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}


