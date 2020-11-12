import 'package:bot_toast/bot_toast.dart';

class ZToastUtil{

  ///Toast.show
  static void show(String text,{Duration duration = const Duration(seconds: 1)}){
    BotToast.showText(text: text, duration: duration);
  }
  //
  // ///Toast.show
  // static showNotification(String text,{Duration duration = const Duration(seconds: 1)}){
  //   BotToast.showNotification(text: text, duration: duration);
  // }
}