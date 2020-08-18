import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //var heightOfScreen = MediaQuery.of(context).size.height;
    //var widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.library_add, color: Colors.white),
        title: Text("Sedang dibuat", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFCD8223), Colors.black],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomLeft),
              image: DecorationImage(
                  image: AssetImage("assets/pattern.png"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: LottieBuilder.asset('assets/construction.json'),
            ),
            Text("Featured Lottie Animation by maulana"),
          ],
        ),
      ),
    );
  }
}
