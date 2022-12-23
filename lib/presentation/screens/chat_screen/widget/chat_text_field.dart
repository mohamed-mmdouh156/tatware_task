import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tatware_tast/business_logic/chat_cubit/chat_cubit.dart';
import 'package:tatware_tast/presentation/router/app_router.dart';
import '../../../../business_logic/app_localization.dart';
import '../../../styles/app_size_config.dart';
import '../../../styles/asset_manager.dart';
import '../../../styles/colors.dart';
import '../../../widget/custom_icon_button.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit,ChatState>(
      listener: (context, state){},
      builder: (context, state){
        var cubit = ChatCubit.get(context);

        return Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.016, vertical: SizeConfig.height*0.01),
            child: Row(
              children: [
                // text feild
                Expanded(
                  child: Container(
                    height: SizeConfig.height*0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
                      color: AppColor.ovWhite,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.015,),
                    child: Row(
                      children: [

                        // language icon
                        CustomIconButton(
                          iconPath: AssetManager.languageIcon,
                          onPressed: (){},
                        ),


                        // text form fiald
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: AppLocalizations.of(context)!.translate('typeSomething').toString(),
                              hintStyle: GoogleFonts.poppins(
                                fontSize: SizeConfig.headline4Size,
                                fontWeight: FontWeight.w400,
                                color: AppColor.gray,
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.015),
                            ),
                            controller: cubit.messageController,
                          ),
                        ),

                        // voice icon
                        CustomIconButton(
                          onPressed: (){},
                          iconPath: AssetManager.voiceIcon,
                        ),

                      ],
                    ),
                  ),
                ),


                SizedBox(width: SizeConfig.height*0.015,),

                // send message button
                CustomIconButton(
                  onPressed: (){
                    if(cubit.chatList.length<7){
                      cubit.addMessage();
                      Future.delayed(const Duration(milliseconds: 500), (){
                        cubit.replyFunction();
                      });
                    }else{
                      Navigator.pushNamed(context, RoutesManager.homeRoute);
                    }
                  },
                  iconPath: AssetManager.sendIcon,
                ),
              ],
            ),

          );
        },
    );
  }
}
