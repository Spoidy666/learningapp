import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningapp/theme/theme.dart';

class Themecubit extends Cubit<ThemeData> {
  Themecubit() : super(lightmode);

  void enableDarkMode() {
    emit(darkmode);
  }

  void enableLightMode() {
    emit(lightmode);
  }

  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? lightmode : darkmode);
  }
}
