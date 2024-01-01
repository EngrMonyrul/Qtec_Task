import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/controls/providers/home_page_provider.dart';
import 'package:untitled/views/homePage/home_page_view.dart';

import 'controls/widgets/theme_data_value.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        home: const HomePageView(),
        theme: themeDateValue(),
      ),
    );
  }
}
