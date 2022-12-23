import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tatware_tast/data/models/message_model.dart';
import 'package:tatware_tast/presentation/styles/font_manager.dart';

import '../../../styles/app_size_config.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';
import 'category_menu_widget.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel messageModel;
  final int index;

  const MessageWidget({
    Key? key,
    required this.messageModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return messageModel.isSender ? senderWidget(message: messageModel.message) : receiverWidget(message: messageModel.message, index: index);
  }


  Widget senderWidget ({required String message}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
            color: AppColor.tirqwaz,
          ),
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.015, vertical: SizeConfig.height*0.018),
              child: Text(
                message,
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.headline5Size,
                  fontWeight: FontWeightManager.medium,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          width: SizeConfig.height*0.015,
        ),

        SizedBox(
          height: SizeConfig.height*0.028,
          width: SizeConfig.height*0.028,
          child: SvgPicture.asset(
            AssetManager.readIcon,
          ),
        ),
      ],
    );
  }


  Widget receiverWidget ({required String message , required int index}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColor.ovWhite,
              radius: SizeConfig.height*0.022,
              child : SizedBox(
                height: SizeConfig.height*0.028,
                width: SizeConfig.height*0.028,
                child: SvgPicture.asset(
                  AssetManager.botIcon,
                ),
              ),
            ),

            SizedBox(
              width: SizeConfig.height*0.015,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
                color: AppColor.ovWhite,
              ),
              child: Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.015, vertical: SizeConfig.height*0.018),
                  child: Text(
                    message,
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.headline5Size,
                      fontWeight: FontWeight.normal,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Visibility(
          visible: index == 6 ? true : false,
          child: const CategoryMenuWidget(),
        ),
      ],
    );
  }


}
