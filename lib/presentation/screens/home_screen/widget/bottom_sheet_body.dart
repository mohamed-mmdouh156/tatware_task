import 'package:flutter/material.dart';
import '../../../styles/app_size_config.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';
import 'bottom_sheet_item.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.height*0.7,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.height*0.005,
          ),

          Container(
            height: SizeConfig.height*0.005,
            width: SizeConfig.height*0.06,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.height*0.1),
              color: AppColor.gray,
            ),
          ),

          SizedBox(
            height: SizeConfig.height*0.02,
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
              children: [
                BottomSheetItem(
                  onPressed: (){},
                  iconPath: AssetManager.botIcon,
                  title: "Information Technology",
                  number: "25",
                ),

                BottomSheetItem(
                  onPressed: (){},
                  iconPath: AssetManager.botIcon,
                  title: "Supply Chain",
                  number: "12",
                ),

                BottomSheetItem(
                  onPressed: (){},
                  iconPath: AssetManager.botIcon,
                  title: "Security",
                  number: "18",
                ),

                BottomSheetItem(
                  onPressed: (){},
                  iconPath: AssetManager.botIcon,
                  title: "Human Resource",
                  number: "8",
                ),

                BottomSheetItem(
                  onPressed: (){},
                  iconPath: AssetManager.botIcon,
                  title: "Human Resource",
                  number: "8",
                ),

                BottomSheetItem(
                  onPressed: (){},
                  iconPath: AssetManager.botIcon,
                  title: "Translation",
                  number: "8",
                ),
              ],
            ),
          ),
          ),

        ],
      ),
    );
  }
}