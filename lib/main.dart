import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/routes/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/l10n/app_localizations.dart';

void main() {
  runApp(
    ProviderScope(
      child: MatrimonyApp(),
    ),
  );
}

class MatrimonyApp extends StatelessWidget {
  MatrimonyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Matrimony App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: _appRouter.config(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
    );
  }
}
