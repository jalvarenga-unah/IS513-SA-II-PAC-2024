import 'package:flutter/material.dart';

class MenusPage extends StatefulWidget {
  const MenusPage({super.key});

  @override
  State<MenusPage> createState() => _MenusPageState();
}

class _MenusPageState extends State<MenusPage> {
  final _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menus'),
        ),
        // drawer: Drawer(),
        body: PageView(
          controller: _pageController,
          // ⬇️ Para desabilitar el swipe
          physics: const NeverScrollableScrollPhysics(),
          // onPageChanged: (value) {
          //   setState(() {});
          //   currentIndex = value;
          // },
          children: [
            const HomeMenuPage(),
            Container(color: Colors.blue),
            Container(color: Colors.green),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {});
            currentIndex = value;

            // _pageController.jumpToPage(value);

            _pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        floatingActionButton: currentIndex == 1
            ? FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.home),
              )
            : null);
  }
}

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("Home Menu Page cargado");
    return Container(color: Colors.red);
  }
}
