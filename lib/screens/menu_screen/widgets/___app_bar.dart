import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatefulWidget implements PreferredSizeWidget {
  late TabController tabController;

  HomeScreenAppBar({super.key, required this.tabController});

  @override
  State<HomeScreenAppBar> createState() => _HomeScreenAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(150);
}

class _HomeScreenAppBarState extends State<HomeScreenAppBar> {
  bool showSearchField = false;

  @override
  AppBar build(BuildContext context) {
    return AppBar(
        title: (showSearchField) ? const TextField() : const Text("hello kero"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                showSearchField = !showSearchField;
              });
            },
            icon: const Icon(Icons.search),
          )
        ],
        bottom: TabBar(
          controller: widget.tabController,
          dividerColor: Colors.transparent,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Tab------1'),
            Tab(text: 'Tab------2'),
            Tab(text: 'Tab------3'),
            Tab(text: 'Tab------4'),
            Tab(text: 'Tab------5'),
            Tab(text: 'Tab------6'),
            Tab(text: 'Tab------7'),
            Tab(text: 'Tab------8'),
            Tab(text: 'Tab------9'),
          ],
        ));
  }
}
