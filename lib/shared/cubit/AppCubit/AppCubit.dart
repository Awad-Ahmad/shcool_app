import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_app/layout/mainscreen.dart';
import 'package:school_app/layout/messesgesscreen.dart';
import 'package:school_app/layout/personal_info.dart';
import 'package:school_app/shared/cubit/AppCubit/AppStates.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) {
    return BlocProvider.of(context);
  }

  int currentIndex = 0;

  void changeIndex(index) {
    currentIndex = index;
    emit(NavBarIndexChanged());
  }
  List <Widget>screensName=[
    mainScreen(),
    MessegeScreen(),
    PersonalInfo(),
  ];
}
