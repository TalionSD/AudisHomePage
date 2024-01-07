import 'package:audis_home_page/screens/home_page.dart';
import 'package:audis_home_page/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AudisHomePage',
      theme: ThemeData(
       scaffoldBackgroundColor: Style.backgroundColor,
      
      ),
      home: HomePage(),
    );
  }
}
