import 'package:flutter/material.dart';
import 'application/themes/themes.dart';
import 'application/common/componenets/gradient_buttons.dart';

///
/// Implemented some of important part of the hole app just to test theming
///

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: null,
        leading: RawMaterialButton(
          onPressed: () {},
          elevation: 0,
          fillColor: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Icon(Icons.arrow_back_ios_new_rounded,color: Theme.of(context).colorScheme.onSecondary),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width/1.3,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(28))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            GradientButton(
              onPressed: (){},
              child: Text('Hello'),
            ),
          ],
        ),
      ),
      ///
      /// This FAB is not good soon we use GradientButton for this too
      ///
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Theme.of(context).colorScheme.primary
          ),
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              Icons.shopping_cart_rounded,
              size: 29,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              gradient: Theme.of(context).extension<GradientExtension>()!.gradient1,
            ),
          ),
        ),
      ),
    );
  }
}
