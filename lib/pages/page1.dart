import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter_application_5/pages/page1.dart';
import 'package:flutter_application_5/pages/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1();
}

class _page1 extends State<page1> {
  int number1 = 100;

  void decrease1() {
    if (number1 > 0) {
      setState(() {
        number1--;
      });
    }
  }

  int number2 = 100;

  void decrease2() {
    if (number2 > 0) {
      setState(() {
        number2--;
      });
    }
  }

  int number3 = 100;

  void decrease3() {
    if (number3 > 0) {
      setState(() {
        number3--;
      });
    }
  }

  int number4 = 100;

  void decrease4() {
    if (number4 > 0) {
      setState(() {
        number4--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
                child: Column(
              children: [
                const Text(
                  "سبحان الله",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(number1.toString()),
                ElevatedButton(
                  onPressed: decrease1,
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "decreamnt button",
                  ),
                  style: ElevatedButton.styleFrom(
                    // Disable the button when _number is 0
                    backgroundColor:
                        number1 == 0 ? Colors.blueGrey : Colors.blue,
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 50,
            ),
            Container(
                child: Column(
              children: [
                const Text(
                  "الحمدلله",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(number2.toString()),
                ElevatedButton(
                  onPressed: decrease2,
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "decreamnt button",
                  ),
                  style: ElevatedButton.styleFrom(
                    // Disable the button when _number is 0
                    backgroundColor:
                        number2 == 0 ? Colors.blueGrey : Colors.blue,
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 50,
            ),
            Container(
                child: Column(
              children: [
                const Text(
                  "لا اله الا الله",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(number3.toString()),
                ElevatedButton(
                  onPressed: decrease3,
                  child: const Text("decreamnt button"),
                  style: ElevatedButton.styleFrom(
                    // Disable the button when _number is 0
                    backgroundColor:
                        number3 == 0 ? Colors.blueGrey : Colors.blue,
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 50,
            ),
            Container(
                child: Column(
              children: [
                const Text(
                  "الله اكبر",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(number4.toString()),
                ElevatedButton(
                  onPressed: decrease4,
                  child: const Text("decreamnt button"),
                  style: ElevatedButton.styleFrom(
                    // Disable the button when _number is 0
                    backgroundColor:
                        number4 == 0 ? Colors.blueGrey : Colors.blue,
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const DrawerHeader(
              child: Text(
                " P A G E S ",
                style: TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("H O M E"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const page1()));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("S E T T I N G"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page2()));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("P R O F I L E"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page2()));
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "setting",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.brown.shade100,
        title: const Center(
            child: Text(
          " Home page ",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
