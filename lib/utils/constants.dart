import 'package:flutter/material.dart';

enum PageState {
  HOME_SCREEN,
  FOLDER_VIDEO_SCREEN,
  FOLDER_IMAGE_SCREEN,
  VIDEO_LIST_SCREEN,
  IMAGE_LIST_SCREEN,
}
enum FolderMode {
  VIDEO,
  IMAGE,
}
const kPrimaryTextColor = Color(0xff454545);
const kBorderColor = Color(0xffefefef);

class Utils {
  static String convertTimeVideos(int secs) {
    int minutes = ((secs / 60) % 60).toInt();
    int hours = (secs ~/ (60 * 60));
    int seconds = (secs % 60);
    if (hours > 0)
      return "${_convertNumberToString(hours)}:${_convertNumberToString(minutes)}:${_convertNumberToString(seconds)}";
    else
      return "${_convertNumberToString(minutes)}:${_convertNumberToString(seconds)}";
  }

  static String _convertNumberToString(int number) {
    if (number == 0) {
      return "00";
    } else if (number <= 9) {
      return "0$number";
    } else
      return "$number";
  }
}
