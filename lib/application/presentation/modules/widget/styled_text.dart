import '../../../packages/package.dart';

enum TextType {
  titleLarge,
  titleMedium,
  titleSmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  displayLarge,
  displayMedium,
  displaySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

class StyledText extends StatelessWidget {
  const StyledText(
      String this.text, {
        Key? key,
        this.textType = TextType.displayMedium,
        this.textDirection = TextDirection.ltr,
        this.textAlign = TextAlign.left,
        this.color = Colors.black,
      }) : super(key: key);
  final String text;
  final TextType textType;
  final TextDirection textDirection;
  final TextAlign textAlign;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final Map<TextType, TextStyle?> textTypeMap = {
      TextType.titleLarge: Theme.of(context).textTheme.titleLarge,
      TextType.titleMedium: Theme.of(context).textTheme.titleMedium,
      TextType.titleSmall: Theme.of(context).textTheme.titleSmall,
      TextType.headlineLarge: Theme.of(context).textTheme.headlineLarge,
      TextType.headlineMedium: Theme.of(context).textTheme.headlineMedium,
      TextType.headlineSmall: Theme.of(context).textTheme.headlineSmall,
      TextType.bodyLarge: Theme.of(context).textTheme.bodyLarge,
      TextType.bodyMedium: Theme.of(context).textTheme.bodyMedium,
      TextType.bodySmall: Theme.of(context).textTheme.bodySmall,
      TextType.displayLarge: Theme.of(context).textTheme.displayLarge,
      TextType.displayMedium: Theme.of(context).textTheme.displayMedium,
      TextType.displaySmall: Theme.of(context).textTheme.displaySmall,
      TextType.labelLarge: Theme.of(context).textTheme.labelLarge,
      TextType.labelMedium: Theme.of(context).textTheme.labelMedium,
      TextType.labelSmall: Theme.of(context).textTheme.labelSmall,
    };
    return Text(text,
        textDirection: textDirection,
        textAlign: textAlign,
        style: textTypeMap[textType]);
  }
}