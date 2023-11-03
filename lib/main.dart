import 'package:dg_agency/data/repositories/artist_repository.dart';
import 'package:dg_agency/firebase_options.dart';
import 'package:dg_agency/ui/root/pages/root_page.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() async {
  GetIt.instance
      .registerLazySingleton<ArtistRepository>(() => ArtistRepository());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EasySplashScreen(
        logo: Image.asset('assets/app-icon.png'),
        durationInSeconds: 2,
        backgroundColor: Colors.black,
        navigator: const SplashAnimation(),
      ),
    );
  }
}

class SplashAnimation extends StatefulWidget {
  const SplashAnimation({super.key});

  @override
  State<SplashAnimation> createState() => _SplashAnimationState();
}

class _SplashAnimationState extends State<SplashAnimation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _containerWidth = 230.0;
        _containerHeight = 230.0;
      });
    });
    navigationToRoot();
  }

  void navigationToRoot() async {
    await Future.delayed(const Duration(seconds: 6));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const RootPage(),
        ));
  }

  double _containerWidth = 100.0;
  double _containerHeight = 100.0;

  void _toggleSize() {
    setState(() {
      if (_containerWidth == 100.0) {
        _containerWidth = 200.0;
        _containerHeight = 200.0;
      } else {
        _containerWidth = 100.0;
        _containerHeight = 100.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _containerWidth,
              height: _containerHeight,
              duration: const Duration(seconds: 3),
              curve: Curves.bounceIn,
              child: Image.asset('assets/app-icon.png'),
            ),
            const Text(
              'Onde sua música vai mais longe',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
