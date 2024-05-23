class CenterOrKyotsu {
  static const kyotsuStart = 2021;
  static String text(String? year) {
    if (year == null) {
      return "";
    }
    final intYear = int.parse(year);
    return intYear < kyotsuStart ? "センター" : "共通テスト";
  }
}
