import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travle_app/cubit/app_cubit_states.dart';
import 'package:travle_app/cubit/app_cubits.dart';
import 'package:travle_app/pages/detail_page.dart';
import 'package:travle_app/pages/nav_pages/main_page.dart';
import 'package:travle_app/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitState>(builder: (context, state) {
        if (state is DetailState) {
          return const DetailPage();
        }
        if (state is WelcomeState) {
          return const WelcomePage();
        }
        if (state is LoadedState) {
          return const MainPage();
        }
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
