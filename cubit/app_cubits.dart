import 'package:bloc/bloc.dart';

import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitState> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
