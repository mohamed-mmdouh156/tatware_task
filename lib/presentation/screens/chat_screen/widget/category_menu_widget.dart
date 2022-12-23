import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tatware_tast/presentation/styles/font_manager.dart';

import '../../../../business_logic/app_localization.dart';
import '../../../styles/app_size_config.dart';
import '../../../styles/colors.dart';
import 'choose_menu_item.dart';

class CategoryMenuWidget extends StatelessWidget {
  const CategoryMenuWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.05 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.height*0.01,
          ),
          const ChooseMenuItem(text: 'Security'),
          const ChooseMenuItem(text: 'Supply Chain' ),
          const ChooseMenuItem(text: 'Information Technology'),
          const ChooseMenuItem(text: 'Human Resource'),
          const ChooseMenuItem(text: 'Business Research'),
          SizedBox(
            height: SizeConfig.height*0.01,
          ),
          Text(
            AppLocalizations.of(context)!.translate('chatText').toString(),
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.headline5Size,
              fontWeight: FontWeightManager.regular,
              color: AppColor.gray,
            ),
          ),
        ],
      ),
    );
  }
}
