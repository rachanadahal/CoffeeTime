import 'package:coffeetime/pages/home_Page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home_Page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 233, 223),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 233, 223),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 239, 233, 223),
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                // title: Text(''),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('lib/images/coffee.png'),
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              "Brew Verse",
              style: TextStyle(
                  color: Colors.brown[800],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 46,
            ),
            const Text(
              'How Do You Like Your Coffee !!!',
              style: TextStyle(
                color: Color.fromARGB(255, 154, 122, 110),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 350,
              height: 75,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.brown[800],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  const BoxShadow(
                      color: Colors.brown,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0)
                ],
              ),
              child: Center(
                // onTap: (),
                child: GestureDetector(
                  // onTap: ,
                  child: Container(
                    child: const Text(
                      'Enter  Shop',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
