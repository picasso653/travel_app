import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travle_app/cubit/app_cubit_states.dart';
import 'package:travle_app/pages/welcome_screen.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(builder: (context, state) {
        if (state is WelcomeState) {
          return const WelcomePage();
        } else {
          return Scaffold();
        }
      }),
    );
  }
}
