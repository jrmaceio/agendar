import 'package:flutter/material.dart';
import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:agendar/src/features/splash/splash_page.dart';

class AgendarApp extends StatelessWidget {

  const AgendarApp({ super.key });

   @override
   Widget build(BuildContext context) {
    return AsyncStateBuilder(
      builder: (asyncNavigatorObserver) {
        return MaterialApp(
          title: 'Agendar',
          navigatorObservers: [asyncNavigatorObserver],
          routes: {
            '/': (_) => const SplashPage(),
          },
       ); 
      },);
  }
}