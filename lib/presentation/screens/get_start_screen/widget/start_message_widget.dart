import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tatware_tast/presentation/styles/app_size_config.dart';
import '../../../../business_logic/app_localization.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';

class StartMessageWidget extends StatelessWidget {
  const StartMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.width,
      height: SizeConfig.height*0.28,

      child: Stack(
        alignment: Alignment.center,
        children: [

          Padding(
            padding: EdgeInsets.only(left: SizeConfig.height*0.09),
            child: const Image(
              image: AssetImage(AssetManager.getStartImage1),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.1 , vertical: SizeConfig.height*0.022),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.headline3Size,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: AppLocalizations.of(context)!.translate('getStartText1').toString(),),
                      TextSpan(text: ' Oranobot \n', style: GoogleFonts.poppins(fontWeight: FontWeight.w700,),),
                      TextSpan(text: AppLocalizations.of(context)!.translate('getStartText2').toString(),),
                    ],
                  ),
                ),

                SizedBox(height: SizeConfig.height*0.025,),

                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.headline3Size,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black,
                    ),

                    children: <TextSpan>[
                      TextSpan(text: AppLocalizations.of(context)!.translate('getStartText3').toString(),),
                      TextSpan(text: " ${AppLocalizations.of(context)!.translate('getStartText4').toString()} ", style: GoogleFonts.poppins(fontWeight: FontWeight.w500,),),
                      TextSpan(text: AppLocalizations.of(context)!.translate('getStartText5').toString(),),
                    ],
                  ),
                ),

              ],
            ),
          ),

        ],
      ),

    );
  }
}
