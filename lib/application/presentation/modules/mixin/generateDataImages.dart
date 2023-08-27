// ignore_for_file: non_constant_identifier_names

mixin helpGenerated {
  static String loginScreen = "assets/icons/loginScreen/";
  static String onboarding = "assets/icons/onboarding/";
  static String onOrders = "assets/icons/ordersScreen/";
  static String onHome = "assets/icons/homeScreen/";
}

mixin GenerateDataImages on helpGenerated {
  //OnBoarding screen
  static String background = "${helpGenerated.onboarding}background.png";
  static String logo_onboarding = "${helpGenerated.onboarding}logo1.svg";

  //Login screen
  static String arrow_left = "${helpGenerated.loginScreen}Arrow-Left.svg";
  static String google = "${helpGenerated.loginScreen}Google.svg";
  static String facebook = "${helpGenerated.loginScreen}Facebook.svg";
  static String lock = "${helpGenerated.loginScreen}Lock.svg";
  static String mailbox = "${helpGenerated.loginScreen}Mailbox.svg";

  //Orders screen
  static String empty_orders = "${helpGenerated.onOrders}Box.svg";
  static String arrow_right = "${helpGenerated.onOrders}Arrow-Right.svg";


  //home screen
  static String fire_icon = "${helpGenerated.onHome}fire-icon.svg";
  static String setting_group = "${helpGenerated.onHome}Icon-Group.svg";
  static String icon_profile = "${helpGenerated.onHome}Icon-Profile.svg";
  static String icon_setting = "${helpGenerated.onHome}Icon-Setting.svg";
  static String icon_search = "${helpGenerated.onHome}Search.svg";
  static String image_box = "${helpGenerated.onHome}box.png";
  static String card = "${helpGenerated.onHome}card.png";

  static String arrow_drawer = "${helpGenerated.onHome}arrow-drawer.svg";
  static String card_drawer = "${helpGenerated.onHome}card-drawer.svg";
  static String chat_drawer = "${helpGenerated.onHome}chat-drawer.svg";
  static String info_drawer = "${helpGenerated.onHome}info-drawer.svg";
  static String letter_drawer = "${helpGenerated.onHome}letter-drawer.svg";
  static String logout_drawer = "${helpGenerated.onHome}logout-drawer.svg";
  static String return_drawer = "${helpGenerated.onHome}return-drawer.svg";
  static String wallet_drawer = "${helpGenerated.onHome}wallet-drawer.svg";

}
