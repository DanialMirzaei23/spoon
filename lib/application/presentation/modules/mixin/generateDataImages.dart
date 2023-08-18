// ignore_for_file: non_constant_identifier_names

mixin helpGenerated {
  static String loginScreen = "assets/icons/loginScreen/";
  static String onboarding = "assets/icons/onboarding/";
  static String onOrders = "assets/icons/ordersScreen/";
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
}
