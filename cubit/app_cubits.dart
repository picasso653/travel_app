import 'package:bloc/bloc.dart';

import 'app_cubit_states.dart' show CubitState, InitialState, WelcomeState;

class AppCubits extends Cubit<CubitState> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
