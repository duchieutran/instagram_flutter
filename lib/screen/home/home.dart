import 'package:flutter/material.dart';
import 'package:instagram_ui/screen/home/home_page/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        //TODO : bottomAppBar dùng để làm gì ?
        padding: const EdgeInsets.all(5),
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.065,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            tabIcon(icon: Icons.home, index: 0),
            tabIcon(icon: Icons.search, index: 1),
            tabIcon(icon: Icons.ondemand_video, index: 2),
            tabIcon(icon: Icons.card_travel, index: 3),
            tabIcon(icon: Icons.person, index: 4),
          ],
        ),
      ),
    );
  }

  Widget tabIcon({required int index, required IconData icon}) {
    return IconButton(
        onPressed: () {
          setState(() {
            currentPage = index;
          });
        },
        icon: Icon(
          icon,
          size: 25,
          color: currentPage == index
              ? const Color.fromRGBO(203, 73, 101, 1)
              : const Color.fromRGBO(40, 40, 40, 1),
        ));
  }
}
