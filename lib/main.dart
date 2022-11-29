import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app_hadi_v1/const/theme_data.dart';
import 'package:grocery_app_hadi_v1/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void getCurrentAppThem() {}

  @override
  Widget build(BuildContext context) {
    bool isDark = false;
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: Styles.themeData(true, context),
        home: const HomeScreen(),
      ),
    );
  }
}
