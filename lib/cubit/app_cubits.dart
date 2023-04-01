import 'package:bloc/bloc.dart';
import 'package:travle_app/services/data_services.dart';

import 'app_cubit_states.dart'
    show CubitState, InitialState, LoadedState, LoadingState, WelcomeState;

class AppCubits extends Cubit<CubitState> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }
}
