import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_tast/business_logic/chat_cubit/chat_cubit.dart';
import 'package:tatware_tast/presentation/screens/chat_screen/widget/chat_text_field.dart';
import 'package:tatware_tast/presentation/screens/chat_screen/widget/message_widget.dart';
import 'package:tatware_tast/presentation/styles/app_size_config.dart';
import 'package:tatware_tast/presentation/styles/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: BlocConsumer<ChatCubit,ChatState>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = ChatCubit.get(context);

          return Padding(
            padding: EdgeInsets.only(top: SizeConfig.topPadding, bottom: SizeConfig.bottomPadding),

            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.015, vertical: SizeConfig.height*0.002),
                    child: ListView.separated(
                      itemBuilder: (context, index)=>MessageWidget(messageModel: cubit.chatList[index], index: index,),
                      separatorBuilder: (context, index)=> SizedBox(height: SizeConfig.height*0.028,),
                      itemCount: cubit.chatList.length,
                      shrinkWrap: true,
                    ),
                  ),
                ),

                const ChatTextField(),

              ],
            ),
          );
        },
      ),
    );
  }
}
