import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../business_logic/app_localization.dart';
import '../styles/app_size_config.dart';
import '../styles/colors.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double width;
  final Color buttonColor;

  const DefaultButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.width,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: SizeConfig.height*0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
        color: buttonColor,
      ),

      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          AppLocalizations.of(context)!.translate(buttonText).toString(),
          style: GoogleFonts.poppins(
            fontSize: SizeConfig.headline3Size,
            fontWeight: FontWeight.w500,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
