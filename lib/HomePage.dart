import 'package:flutter/material.dart';
import 'ListPage.dart';
import 'SettingPage.dart';
import '../Theme/Theme.dart';
import 'EmployeePage.dart';
import 'MainPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedScreenIndex = 0;
  final List _screens = [
    const MainPage(),
    const ListPage(),
    const SettingPage()
  ];

  int drawerSelectedScreen = 0;
  final List drawerScreen = [
    const MainPage(),
    const EmployeePage(),
    const MainPage(),
    const EmployeePage(),
    const MainPage()
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'ရွှေထိုက်',
              style: FontStyle().appbarLabel,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              'အဆင့်မြင့် ဆန်ရောင်းဝယ်ရေး',
              style: FontStyle().whiteFont,
            ),
          ],
        ),
        backgroundColor: ColorTheme().primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorTheme().primaryColor,
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/250?image=9'),
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'အဆင့်မြင့် ဆန်ရောင်းဝယ်ရေး',
                    style: FontStyle().whiteFont,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home_outlined,
              ),
              title: const Text('မူလစာမျက်နှာ'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  drawerSelectedScreen = 0;
                });
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: ((context) => const MainPage())));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('ဝန်ထမ်းများ'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  drawerSelectedScreen = 1;
                });
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(
                Icons.storage,
              ),
              title: const Text('မှတ်တမ်း'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  drawerSelectedScreen = 2;
                });
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(
                Icons.textsms_outlined,
              ),
              title: const Text('စာပို့မည်'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  drawerSelectedScreen = 3;
                });
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(
                Icons.android_outlined,
              ),
              title: const Text('ဆေ့ာဝဲလ်အကြောင်း'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  drawerSelectedScreen = 4;
                });
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: drawerSelectedScreen == 0 ? _screens[_selectedScreenIndex] : drawerScreen[drawerSelectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorTheme().primaryColor,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "မူလစာမျက်နှာ"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: "စာရင်း"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "စက်တင်")
        ],
      ),
    );
  }
}
