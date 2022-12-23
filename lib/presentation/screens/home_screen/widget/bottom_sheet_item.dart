import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../styles/app_size_config.dart';
import '../../../styles/colors.dart';
import '../../../styles/font_manager.dart';

class BottomSheetItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String number;
  final VoidCallback onPressed;

  const BottomSheetItem({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.number,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.height*0.01),
        child: Container(
          height: SizeConfig.height*0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeConfig.height*0.015),
            border: Border.all(
              color: AppColor.gray,
              width: SizeConfig.height*0.0006,
            ),
            color: AppColor.white,
          ),

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.013),
            child: Row(
              children: [
                SvgPicture.asset(iconPath),

                SizedBox(
                  width : SizeConfig.height*0.03,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.headline5Size,
                          fontWeight: FontWeightManager.medium,
                          color: AppColor.black,
                        ),
                      ),

                      Text(
                        '$number Experts',
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.headline6Size,
                          fontWeight: FontWeightManager.regular,
                          color: AppColor.gray,
                        ),
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.gray,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
