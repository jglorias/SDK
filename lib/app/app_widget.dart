import "package:flutter/material.dart";
import "package:flutter_modular/flutter_modular.dart";
import "package:easy_localization/easy_localization.dart";
import "package:responsive_framework/responsive_framework.dart";

// import 'package:flutter_localizations/flutter_localizations.dart';

// import 'package:responsive_framework/responsive_framework.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (BuildContext context, Widget? widget) => ResponsiveWrapper.builder(
          // BouncingScrollWrapper.builder(context, widget!),
          ClampingScrollWrapper.builder(context, widget!),
          maxWidth: 640,
          minWidth: 320,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.autoScale(320, name: MOBILE),
            const ResponsiveBreakpoint.resize(400, name: MOBILE),
            // const ResponsiveBreakpoint.resize(480, name: MOBILE),
            // const ResponsiveBreakpoint.resize(456, name: MOBILE),
            // const ResponsiveBreakpoint.autoScale(640, name: TABLET),
            // const ResponsiveBreakpoint.resize(632, name: TABLET),
            // const ResponsiveBreakpoint.resize(800, name: DESKTOP),
            // const ResponsiveBreakpoint.resize(493, name: DESKTOP),
            // const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            // const ResponsiveBreakpoint.autoScale(1280, name: 'XL'),
            // const ResponsiveBreakpoint.autoScale(1700, name: "4K"),
            // const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5)),),
      title: "SCS App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
      ),
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // locale: Provider.of<LocaleProvider>(context).locale,
      // supportedLocales: L10n.support,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
