import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'home/view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WebSocket',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
