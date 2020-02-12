import 'package:flutter/material.dart';

class SliverAppBarConceptPage extends StatefulWidget {
  @override
  _SliverAppBarConceptPageState createState() =>
      _SliverAppBarConceptPageState();
}

class _SliverAppBarConceptPageState extends State<SliverAppBarConceptPage>
    with SingleTickerProviderStateMixin {
  String imgUrl =
      "http://4.bp.blogspot.com/-w3I5XQ1vWbg/Up6hKWsBRrI/AAAAAAAABss/I7_nbS_7wQ0/s1600/Nice+Wallpapers+(12).jpg";
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Sliver App Bar Testing"),
            floating: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            bottom: TabBar(controller: _tabController, tabs: [
              Tab(
                text: "Tab 1",
              ),
              Tab(
                text: "Tab 2",
              )
            ]),
          ),
//          SliverList(delegate: SliverChildListDelegate(_buildList(50))),
//          SliverFillRemaining(child: Text("Another way to represent the body"),)
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Center(child: Text("Content for Tab 1")),
                Center(child: Text("Content for Tab 2")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(15),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}
