import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:native_designs/views/contact-screen.dart';
import 'package:native_designs/views/home-screen.dart';
import 'package:native_designs/views/portfolio-screen.dart';
import 'package:native_designs/views/services-screen.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

const String home = "Home";
const String services = "Services";
const String contact = "Contact";
const String portfolio = "Portfolio";
const String title = "Native Designs";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> _pages;
  late Widget _home;
  late Widget _services;
  late Widget _contact;
  late Widget _portfolio;
  late int _currentIndex;
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _home = const HomeScreen();
    _services = const ServicesScreen();
    _contact = ContactScreen(changePage: _changeTab);
    _portfolio = const PortfolioScreen();
    _pages = [_home, _services, _contact, _portfolio];
    _currentIndex = 0;
    _currentPage = _home;
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img_1.png"), fit: BoxFit.cover),
        ),
        child: _currentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          backgroundColor: Colors.black26,
          onTap: (index) {
            _changeTab(index);
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: home,
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: services,
              icon: Icon(Icons.home_repair_service),
            ),
            BottomNavigationBarItem(
              label: contact,
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: portfolio,
              icon: Icon(Icons.app_registration),
            ),

          ]),
    );
  }
}
