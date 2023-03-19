import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/detail_page.dart' show DetailPage;
import 'cubit/app_cubits.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<AppCubits>(
          create: (context)=>AppCubits(),
          )
        );
  }
}
