import 'package:report_excel/core/utils/export.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouterGenerator.getRoute,
      initialRoute: RoutesManager.main,
      darkTheme: darkTheme(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
