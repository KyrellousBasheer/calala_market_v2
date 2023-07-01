import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  late TabController tabController;
  HomeBody({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      height: 400,
      child: TabBarView(
        controller: tabController,
        children: const [
          Center(child: Text('This is tab 1')),
          Center(child: Text('This is tab 2')),
          Center(child: Text('This is tab 3')),
          Center(child: Text('This is tab 4')),
          Center(child: Text('This is tab 5')),
          Center(child: Text('This is tab 6')),
          Center(child: Text('This is tab 7')),
          Center(child: Text('This is tab 8')),
          Center(child: Text('This is tab 9')),
        ],
      ),
    ));
  }
}
