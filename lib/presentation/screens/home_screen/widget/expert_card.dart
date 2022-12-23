import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/app_size_config.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';
import '../../../styles/font_manager.dart';

class ExpertCard extends StatelessWidget {
  const ExpertCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      height: SizeConfig.height*0.26,
      width: SizeConfig.height*0.2,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.height*0.03),
        color: AppColor.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          // expert image
          Image(
            height: SizeConfig.height*0.14,
            width: SizeConfig.height*0.2,
            image: const AssetImage(AssetManager.homeImage1),
            fit: BoxFit.fill,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.height*0.01,),

                // rate and favirate button
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColor.yallow,
                          size: SizeConfig.height*0.022,
                        ),

                        SizedBox(
                          width: SizeConfig.height*0.005,
                        ),

                        Text(
                          '(5.0)',
                          style: GoogleFonts.poppins(
                            fontSize: SizeConfig.headline6Size,
                            fontWeight: FontWeightManager.regular,
                            color: AppColor.gray,
                          ),
                        ),
                      ],
                    ),

                    InkWell(
                      onTap: (){},
                      child: Icon(
                        Icons.favorite,
                        size: SizeConfig.height*0.03,
                        color: AppColor.gray,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: SizeConfig.height*0.01,),

                // name text
                Text(
                  'Kareem Adel',
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.headline5Size,
                    fontWeight: FontWeightManager.medium,
                    color: AppColor.black,
                  ),
                ),

                SizedBox(height: SizeConfig.height*0.002,),

                // category text
                Text(
                  'Supply Chain',
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.headline6Size,
                    fontWeight: FontWeightManager.regular,
                    color: AppColor.gray,
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
