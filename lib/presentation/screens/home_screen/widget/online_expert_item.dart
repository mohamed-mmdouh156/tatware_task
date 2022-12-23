import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/app_size_config.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';
import '../../../styles/font_manager.dart';

class OnlineExpertItem extends StatelessWidget {
  const OnlineExpertItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children:  [
                  CircleAvatar(
                    backgroundColor: AppColor.gray,
                    radius: SizeConfig.height*0.037,
                  ),
                  CircleAvatar(
                    backgroundImage: const AssetImage(AssetManager.homeImage1),
                    radius: SizeConfig.height*0.036,
                  ),
                ],

              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.height*0.003),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.ovWhite,
                      radius: SizeConfig.height*0.008,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: SizeConfig.height*0.006,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: SizeConfig.height*0.005,),

        Text(
          'Kareem',
          style: GoogleFonts.poppins(
            fontSize: SizeConfig.headline5Size,
            fontWeight: FontWeightManager.medium,
            color: AppColor.gray,
          ),
        ),
      ],
    );
  }
}
