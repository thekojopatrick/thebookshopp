import 'package:flutter/widgets.dart';
import 'package:the_bookshop_app/ui/Getting-started/intro_screen.dart';
import 'package:the_bookshop_app/ui/Onboarding/onboarding_screen.dart';
import 'package:the_bookshop_app/ui/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => SplashScreen(),
  '/second': (BuildContext context) => OnboardingScreen(),
  '/intro' : (BuildContext context)=> GettingStarted(),
};
