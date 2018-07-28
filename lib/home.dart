import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: _buildDrawer(context),
      body: _buildBody(context),
      bottomNavigationBar: _buildBtmNavBar(context),
      floatingActionButton: _buildFltActButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  _buildBody(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('从前有座山'),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
          ),
          ListTile(
            title: Text('讲'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('完'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('了'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _buildBtmNavBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.teal[100],
      shape: CircularNotchedRectangle(),
      notchMargin: 0.5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.collections_bookmark),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, "/search");
            },
          ),
        ],
      ),
    );
  }

  _buildFltActButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 0.0,
      child: Icon(Icons.local_library),
      onPressed: () {},
      mini: true,
    );
  }
}
