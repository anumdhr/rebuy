import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


import '../Liked_item_screen/liked_item.dart';
import '../explore/explore.dart';
import '../home_screen/my_home_page.dart';
import '../messages/messages.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;
  List page = [
    const MyHomePage(),
    const ExplorePage(),
    const LikedItem(),
    const MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: page[index],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          height: 54,
          decoration: BoxDecoration(
            color: const Color(0xff3C3C3C),
            borderRadius: BorderRadius.circular(22),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      index = 0;
                    },
                  );
                },
                child: Container(
                  height: 41,
                  width: 66,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index == 0
                        ? const Color(0xff087E8B)
                        : Color(0xff3C3C3C),
                  ),
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      index = 1;
                    },
                  );
                },
                child: Container(
                  height: 41,
                  width: 66,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index == 1
                        ? const Color(0xff087E8B)
                        : Color(0xff3C3C3C),
                  ),
                  child: Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  print("Hello");
                  final ImagePicker picker = ImagePicker();
                  await picker.pickImage(source: ImageSource.camera);
                },
                child: Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    color: index == 2 ? const Color(0xff087E8B) : Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      index = 2;
                    },
                  );
                },
                child: Container(
                  height: 41,
                  width: 66,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index == 2
                        ? const Color(0xff087E8B)
                        : Color(0xff3C3C3C),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      index = 3;
                    },
                  );
                },
                child: Container(
                  height: 41,
                  width: 66,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index == 3
                        ? const Color(0xff087E8B)
                        : Color(0xff3C3C3C),
                  ),
                  child: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 38),
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xff3C3C3C),
          ),
          child: FloatingActionButton(
            onPressed: () async {
              final ImagePicker picker = ImagePicker();
              await picker.pickImage(source: ImageSource.camera);
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.camera_alt_outlined,
              color: Color(0xff3C3C3C),
            ),
          ),
        ),
      ),
    );
  }
}
