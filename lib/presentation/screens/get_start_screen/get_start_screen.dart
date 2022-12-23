import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tatware_tast/presentation/router/app_router.dart';
import 'package:tatware_tast/presentation/screens/get_start_screen/widget/start_message_widget.dart';
import 'package:tatware_tast/presentation/styles/app_size_config.dart';
import 'package:tatware_tast/presentation/widget/default_button.dart';
import '../../../business_logic/app_localization.dart';
import '../../styles/asset_manager.dart';
import '../../styles/colors.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(child: Container()),

          const StartMessageWidget(),

          // bot image
          SizedBox(
            height: SizeConfig.height*0.35,

            child: const Image(
              image: AssetImage(AssetManager.botImage),
            ),
          ),

          SizedBox(height: SizeConfig.height*0.025,),

          // Next button
          DefaultButton(
              buttonText: 'next',
              onPressed: ()=>Navigator.pushNamed(context, RoutesManager.chatRoute),
              width: SizeConfig.height*0.2,
              buttonColor: AppColor.tirqwaz,
          ),

          SizedBox(height: SizeConfig.height*0.08,),

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
    );
  }
}
