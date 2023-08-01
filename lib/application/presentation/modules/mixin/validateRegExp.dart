mixin ValidateRegExp{
  static  RegExp validateEmail = RegExp(
  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@gmail.com+");
  static  RegExp hashEmail = RegExp(
  r"@gmail.com");
  static  RegExp validateEmailText = RegExp(
  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]");
}