import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../business_logic/app_localization.dart';
import '../../../styles/app_size_config.dart';
import '../../../styles/colors.dart';
import '../../../styles/font_manager.dart';

class ScreenDividerTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ScreenDividerTitle({Key? key, required this.title, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.012),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppLocalizations.of(context)!.translate(title).toString(),
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.headline4Size,
              fontWeight: FontWeightManager.regular,
              color: AppColor.black,
            ),
          ),
          InkWell(
            onTap: onPressed,
            child: const Icon(
              Icons.more_horiz,
              color: AppColor.gray,
            ),
          ),
        ],
      ),
    );
  }
}
