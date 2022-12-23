import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tatware_tast/business_logic/chat_cubit/chat_cubit.dart';
import 'package:tatware_tast/presentation/router/app_router.dart';
import 'package:sizer/sizer.dart';
import 'package:tatware_tast/presentation/styles/colors.dart';
import 'business_logic/app_localization.dart';
import 'business_logic/bloc_observer.dart';
import 'business_logic/global_cubit/global_cubit.dart';
import 'business_logic/localization_cubit/localization_cubit.dart';
import 'business_logic/localization_cubit/localization_states.dart';
import 'data/local/cache_helper.dart';
import 'data/remote/dio_helper.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
        () async {
      DioHelper.init();
      await CacheHelper.init();
      final languageCode = CacheHelper.getDataFromSharedPreference(key: 'language') ?? "ar";
      debugPrint('language code is : $languageCode');
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key,}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => GlobalCubit()),
        ),
        BlocProvider(
          create: (BuildContext context) => LocalizationCubit()..fetchLocalization(),
        ),
        BlocProvider(
          create: (BuildContext context) => ChatCubit()..replyFunction(),
        ),
      ],
      child: BlocConsumer<LocalizationCubit, LocalizationStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Sizer(
            builder: (context, orientation, deviceType) {
              return LayoutBuilder(builder: (context, constraints) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Tatware Task',
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    DefaultCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale("en",""),
                    Locale("ar",""),
                  ],
                  locale: LocalizationCubit.get(context).appLocal,
                  localeResolutionCallback: (currentLang , supportLang){
                    if(currentLang != null) {
                      for(Locale locale in supportLang){
                        if(locale.languageCode == currentLang.languageCode){
                          return currentLang;
                        }
                      }
                    }
                    return supportLang.first;
                  },
                  onGenerateRoute: RoutesGenerator.getRoutes,
                  initialRoute: RoutesManager.startRoute,
                  theme: ThemeData(
                    fontFamily: 'cairo',
                    scaffoldBackgroundColor: AppColor.white,
                    appBarTheme: const AppBarTheme(
                      elevation: 0.0,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        //statusBarColor: AppColors.transparent,
                        statusBarIconBrightness: Brightness.dark,
                      ),
                    ),
                  ),
                );
              });
            },
          );
        },
      ),
    );
  }
}
