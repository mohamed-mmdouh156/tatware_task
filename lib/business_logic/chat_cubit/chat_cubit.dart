import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/message_model.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  static ChatCubit get(context) => BlocProvider.of(context);

  TextEditingController messageController = TextEditingController();



  List<MessageModel> chatList = [];

  void replyFunction(){
    switch(chatList.length){
      case 0 : {
        chatList.add(MessageModel(isSender: false, message: 'Hi, Whats You Name Firstname?',));
        emit(ReplyMessageState());
        break;
      }
      case 2 : {
        chatList.add(MessageModel(isSender: false, message: 'Ok, ${chatList[1].message} Whats Your Lastname?',));
        emit(ReplyMessageState());
        break;
      }
      case 4 : {
        chatList.add(MessageModel(isSender: false, message: 'Mr ${chatList[1].message} ${chatList[3].message}, What\'s your Title?'));
        emit(ReplyMessageState());
        break;
      }
      case 6 : {
        chatList.add(MessageModel(isSender: false, message: 'What Categories you will need expert In?' ));
        emit(ReplyMessageState());
        break;
      }
      default:{}
    }
  }

  void addMessage(){
    chatList.add(MessageModel(isSender: true, message: messageController.text));
    messageController.clear();
    emit(SendMessageState());
  }


}
