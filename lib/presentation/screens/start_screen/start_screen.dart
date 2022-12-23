import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tatware_tast/business_logic/app_localization.dart';
import 'package:tatware_tast/presentation/router/app_router.dart';
import 'package:tatware_tast/presentation/styles/app_size_config.dart';
import 'package:tatware_tast/presentation/styles/asset_manager.dart';
import 'package:tatware_tast/presentation/styles/colors.dart';

import '../../widget/default_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetManager.startScreenBackground),
            fit: BoxFit.fill,
          ),
        ),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(child: Container(),),

            // app logo
            const Image(
              image: AssetImage(AssetManager.appLogoImage),
            ),

            SizedBox(height: SizeConfig.height*0.023,),

            // intro text
            Text(
              AppLocalizations.of(context)!.translate('startScreenText').toString(),
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.headline3Size,
                fontWeight: FontWeight.w600,
                color: AppColor.darkGray,
              ),
            ),

            SizedBox(height: SizeConfig.height*0.28,),

            // get start button.
            DefaultButton(
              onPressed: ()=>Navigator.pushNamed(context, RoutesManager.getStartRoute),
              width: SizeConfig.width*0.9,
              buttonColor: AppColor.tirqwaz,
              buttonText: 'getStarted',
            ),

            SizedBox(height: SizeConfig.height*0.025,),

            // don't have account text and sign up button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Text(
                  AppLocalizations.of(context)!.translate('dontHavaAccount').toString(),
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.headline6Size,
                    fontWeight: FontWeight.normal,
                    color: AppColor.black,
                  ),
                ),

                SizedBox(width: SizeConfig.height*0.005,),

                InkWell(
                  onTap: (){},
                  child: Text(
                    AppLocalizations.of(context)!.translate('signUp').toString(),
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.headline6Size,
                      fontWeight: FontWeight.w600,
                      color: AppColor.tirqwaz,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConfig.height*0.025,),

            // language button
            InkWell(
              onTap: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  const Icon(
                    Icons.language,
                    color: AppColor.black,
                  ),

                  SizedBox(width: SizeConfig.height*0.005,),

                  Text(
                    AppLocalizations.of(context)!.translate('langEnglish').toString(),
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.headline4Size,
                      fontWeight: FontWeight.normal,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: SizeConfig.height*0.02,),

          ],
        ),
      ),
    );
  }
}
