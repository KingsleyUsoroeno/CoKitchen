import 'dart:io';

class FontUtil {
  FontUtil._();

  static String getAppFont() {
    if (Platform.isIOS) {
      return "Helvetica";
    } else if (Platform.isAndroid) {
      return "GoogleSans";
    } else {
      return "GoogleSans";
    }
  }
}
