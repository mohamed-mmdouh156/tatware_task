part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ReplyMessageState extends ChatState {}

class SendMessageState extends ChatState {}

class ShowMenuState extends ChatState {}