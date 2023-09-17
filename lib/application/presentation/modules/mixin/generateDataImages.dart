// ignore_for_file: non_constant_identifier_names

mixin helpGenerated {
  static String loginScreen = "assets/icons/loginScreen/";
  static String onboarding = "assets/icons/onboarding/";
  static String onOrders = "assets/icons/ordersScreen/";
  static String onHome = "assets/icons/homeScreen/";
  static String onCheckOut = "assets/icons/checkout/";
  static String onFeedBack = "assets/icons/feedback/";
  static String onSetting = "assets/icons/setting/";
  static String onProduct = "assets/icons/productScreen/";
  static String onSearch = "assets/icons/searchScreen/";
  static String onCategoriesContent = "assets/icons/categoriesContentScreen/";
  static String onReview = "assets/icons/reviewScreen/";
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

  static String cart_shop = "${helpGenerated.onHome}cart_shop.svg";

  static String contact_setting = "${helpGenerated.onSetting}contact.svg";
  static String info_setting = "${helpGenerated.onSetting}Information.svg";
  static String language_setting = "${helpGenerated.onSetting}language.svg";
  //Product screen
  static String product_model = "${helpGenerated.onProduct}Product-Model.png";
  static String product_favorite = "${helpGenerated.onProduct}Heart.svg";
  static String star = "${helpGenerated.onProduct}Star.svg";

  //Search screen
  static String empty_search = "${helpGenerated.onSearch}EmptySearch.svg";

  //CategoriesContent Screen
  static String filter = "${helpGenerated.onCategoriesContent}Filter.svg";
  // feedback
  static String camera_feedback = "${helpGenerated.onFeedBack}Camera.svg";
  static String like_feedback = "${helpGenerated.onFeedBack}Like.svg";
  static String message_off_feedback = "${helpGenerated.onFeedBack}Message.svg";
  static String message_on_feedback = "${helpGenerated.onFeedBack}Message-Send.svg";
  static String star_off_feedback = "${helpGenerated.onFeedBack}Star-Off.svg";
  static String star_on_feedback = "${helpGenerated.onFeedBack}Star-On.svg";
  
  
  // checkout
  static String call_outline_checkout = "${helpGenerated.onCheckOut}Call-Outline.svg";
  static String home_outline_checkout = "${helpGenerated.onCheckOut}Home-Outline.svg";
  static String icon_user_checkout = "${helpGenerated.onCheckOut}Icon-User.svg";
  static String location_checkout = "${helpGenerated.onCheckOut}Location.svg";
  static String ticket_checkout = "${helpGenerated.onCheckOut}Ticket.svg";
  static String wallet_colored_checkout = "${helpGenerated.onCheckOut}Wallet-Colored.svg";
  static String card_logo_checkout = "${helpGenerated.onCheckOut}Card-Logo.svg";
  static String card_checkout = "${helpGenerated.onCheckOut}Card.svg";
  static String google_logo_checkout = "${helpGenerated.onCheckOut}Google-logo.svg";
  static String paypal_checkout = "${helpGenerated.onCheckOut}PayPal.svg";
  static String arrow_up_checkout = "${helpGenerated.onCheckOut}Arrow-Up.svg";
  static String check_checkout = "${helpGenerated.onCheckOut}Check.svg";
  static String arrow_down_checkout = "${helpGenerated.onCheckOut}Arrow-Down.svg";
  static String payment_success_checkout = "${helpGenerated.onCheckOut}PaymentSuccess.svg";

  // Reviews Screen
  static String threeDot = "${helpGenerated.onReview}3dot.svg";
  

}
