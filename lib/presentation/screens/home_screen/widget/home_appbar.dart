import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../styles/app_size_config.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: SizeConfig.height*0.08,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.018),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // user image
                CircleAvatar(
                  radius: SizeConfig.height*0.016,
                  backgroundImage: const AssetImage(AssetManager.homeImage1),
                ),

                //app logo
                Image(
                  height: SizeConfig.height*0.028,
                  image: const AssetImage(AssetManager.appLogoImage),
                ),

                // search button
                InkWell(
                  onTap: (){},
                  child: SvgPicture.asset(AssetManager.searchIcon),
                ),
              ],
            ),
          ),
        ),
        const Divider(color: AppColor.gray,),
      ],
    );
  }
}
