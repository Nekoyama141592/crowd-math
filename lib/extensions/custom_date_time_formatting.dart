extension CustomDateTimeFormatting on DateTime {
  // YYYY年MM月DD日HH時mm分ss秒に変換する
  String japaneseDateTime() {
    String formattedDate = '$year年$month月$day日';
    String formattedTime =
        '${hour.toString().padLeft(2, '0')}時${minute.toString().padLeft(2, '0')}分${second.toString().padLeft(2, '0')}秒';
    return '$formattedDate$formattedTime';
  }
}
