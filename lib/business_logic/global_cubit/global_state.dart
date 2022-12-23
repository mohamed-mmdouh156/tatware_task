part of 'global_cubit.dart';

@immutable
abstract class GlobalState {}

class GlobalInitial extends GlobalState {}

class OnBottomSheetOpenState extends GlobalState {}
class OnBottomSheetCloseState extends GlobalState {}
