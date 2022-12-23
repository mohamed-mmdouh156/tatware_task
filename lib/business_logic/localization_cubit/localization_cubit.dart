import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_tast/data/local/cache_helper.dart';

import 'localization_states.dart';

class LocalizationCubit extends Cubit<LocalizationStates>{

  LocalizationCubit() : super(InitialState());

  static LocalizationCubit get(context) => BlocProvider.of(context);

  Locale _appLocale = const Locale('en');

  Locale get appLocal => _appLocale;

  Future<void> fetchLocalization()async{
    String languageCode = CacheHelper.getDataFromSharedPreference(key: CacheHelper.languageKey).toString();

    if(languageCode == 'null'){
      CacheHelper.saveDataSharedPreference(key: CacheHelper.languageKey,value: "en");
      CacheHelper.saveDataSharedPreference(key: CacheHelper.languageNameKey,value: "langArabic");
      _appLocale = const Locale("en");
      changeLanguage(code: "en");
      debugPrint('default language is english');
      emit(FetchLocalizationState());
    }
    else{
      _appLocale = Locale(languageCode);
      debugPrint('default language is $languageCode');
      emit(FetchLocalizationState());
    }
    emit(FetchLocalizationState());
  }




  Future<void> changeLanguage({required String code})async{
    switch(code){
      case "ar":{
        _appLocale = const Locale("ar");
        CacheHelper.saveDataSharedPreference(key: CacheHelper.languageKey,value: "ar");
        CacheHelper.saveDataSharedPreference(key: CacheHelper.languageNameKey,value: "langEnglish");
        debugPrint('App language is Arabic');
        emit(ChangeToArabicState());
      }
      break;
      case "en":{
        _appLocale = const Locale("en");
        CacheHelper.saveDataSharedPreference(key: CacheHelper.languageKey,value: "en");
        CacheHelper.saveDataSharedPreference(key: CacheHelper.languageNameKey,value: "langArabic");
        debugPrint('App language is English');
        emit(ChangeToEnglishState());
      }
      break;
    }
    emit(ChangeLanguageState());
  }



}