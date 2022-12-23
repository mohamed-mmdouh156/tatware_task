import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:tatware_tast/business_logic/global_cubit/global_cubit.dart';
import 'package:tatware_tast/presentation/screens/home_screen/widget/bottom_sheet_body.dart';
import 'package:tatware_tast/presentation/screens/home_screen/widget/bottom_sheet_header.dart';
import 'package:tatware_tast/presentation/screens/home_screen/widget/expert_card.dart';
import 'package:tatware_tast/presentation/screens/home_screen/widget/home_appbar.dart';
import 'package:tatware_tast/presentation/screens/home_screen/widget/online_expert_item.dart';
import 'package:tatware_tast/presentation/screens/home_screen/widget/screen_divider_title.dart';
import 'package:tatware_tast/presentation/styles/app_size_config.dart';
import 'package:tatware_tast/presentation/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalCubit,GlobalState>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = GlobalCubit.get(context);

        return Scaffold(
            backgroundColor: AppColor.ovWhite,
            body: Padding(
              padding: EdgeInsets.only(top: SizeConfig.topPadding),
              child: Column(
                children: [

                  // screen custom appbar
                  const HomeAppbar(),

                  SizedBox(height: SizeConfig.height*0.012,),

                  ScreenDividerTitle(title: 'recommendedExperts', onPressed: (){}),

                  SizedBox(height: SizeConfig.height*0.024,),

                  // recommended experts cards
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.02),
                    child: SizedBox(
                      width: SizeConfig.width,
                      height: SizeConfig.height*0.261,
                      child:  ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=> const ExpertCard(),
                        separatorBuilder: (context,index)=> SizedBox( width: SizeConfig.height*0.01,),
                        itemCount: 4,
                      ),
                    ),
                  ),

                  SizedBox(height: SizeConfig.height*0.024,),

                  ScreenDividerTitle(title: 'onlineExperts', onPressed: (){}),

                  SizedBox(height: SizeConfig.height*0.024,),

                  // online experts widget
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.02),
                    child: SizedBox(
                      width: SizeConfig.width,
                      height: SizeConfig.height*0.13,
                      child:  ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=> const OnlineExpertItem(),
                        separatorBuilder: (context,index)=> SizedBox( width: SizeConfig.height*0.02,),
                        itemCount: 8,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            bottomSheet: SolidBottomSheet(
              canUserSwipe: true,
              draggableBody: true,
              onHide: ()=>cubit.onBottomSheetClose(),
              onShow: ()=>cubit.onBottomSheetOpen(),

              headerBar: Visibility(
                visible: cubit.isHeaderShown,
                child: const BottomSheetHeader(),
              ),

              body: const BottomSheetBody(), // Your body here
            ),
          );
      },
    );
  }
}
