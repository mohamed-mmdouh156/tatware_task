import 'package:flutter/material.dart';
import '../../../styles/app_size_config.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';
import '../../../widget/custom_icon_button.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.height*0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Container(
            height: SizeConfig.height*0.005,
            width: SizeConfig.height*0.06,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.height*0.1),
              color: AppColor.gray,
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIconButton(
                onPressed: (){},
                iconPath: AssetManager.homeIcon,
              ),
              CustomIconButton(
                onPressed: (){},
                iconPath: AssetManager.starIcon,
              ),
              CustomIconButton(
                onPressed: (){},
                iconPath: AssetManager.walletIcon,
              ),
              CustomIconButton(
                onPressed: (){},
                iconPath: AssetManager.profileIcon,
              ),
            ],
          ),

          SizedBox(
            height: SizeConfig.height*0.01,
          ),
        ],
      ),
    );
  }
}
