import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spots App",
      theme: ThemeData.light(useMaterial3: true).copyWith(
        textTheme: GoogleFonts.interTextTheme()
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg-landing-page.jpg'),
          fit: BoxFit.fill,
          opacity: 0.5
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome,',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: kElevationToShadow[1],
                      ),
                ),
                Text('Please Login or Register to continue.',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        shadows: kElevationToShadow[1],
                      ),
                ),
                SizedBox(height: 200),
                FilledButton(
                  onPressed: () {},
                  child: Text('Facility Owner Login'),
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {},
                  child: Text('Facility Owner Register'),
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {},
                  child: Text('User Login'),
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {},
                  child: Text('User Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}