import '../utils/strings.dart';
import 'package:flutter/material.dart';

class BoardGameList extends StatefulWidget {
  BoardGameList();

  @override
  BoardGameListState createState() {
    return BoardGameListState();
  }
}

class BoardGameListState extends State<BoardGameList>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringConstant.goalListTitle,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
        elevation: 0.0,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Tab>[
            Tab(text: StringConstant.worldTab),
            Tab(text: StringConstant.myTab),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
        ],
      )
    );
  }
}