import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  void indexChange(currentIndex) {
    setState(() {
      currentIndex = currentIndex;
    });
  }

  Widget Home() {
    return Column(
      children: <Widget>[
        _appBar,
        Text("Home", style: TextStyle(fontSize: 41)),
      ],
    );
  }

  Widget Search() {
    return SafeArea(
      child: Center(
        child: Text('Search', style: TextStyle(fontSize: 41)),
      ),
    );
  }

  Widget Notifications() {
    return SafeArea(
      child: Center(
        child: Text('Notifications', style: TextStyle(fontSize: 41)),
      ),
    );
  }

  Widget Profile() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(
              '!',
              style: TextStyle(color: Color(0xFFf7ff00), fontSize: 48),
            ),
            maxRadius: 65,
            minRadius: 55,
          ),
          Center(
            child: Text('Profile', style: TextStyle(fontSize: 41)),
          ),
        ],
      ),
    );
  }

  Widget widgetPage() {
    if (currentIndex == 0) {
      return Home();
    }
    if (currentIndex == 1) {
      return Search();
    }

    if (currentIndex == 2) {
      return Notifications();
    }

    if (currentIndex == 3) {
      return Profile();
    }
  }

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _curvedNB,
        body: Column(
          children: <Widget>[
            widgetPage(),
          ],
        ));
  }

  Widget get _curvedNB => CurvedNavigationBar(
        onTap: (indexValue) {
          currentIndex = indexValue;
          indexChange(currentIndex);
          print(currentIndex);
        },
        index: currentIndex,
        color: Colors.black,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.black,
        items: <Widget>[
          Icon(Icons.flash_on, color: Color(0xFFf7ff00), size: 30),
          Icon(Icons.flash_on, color: Color(0xFFf7ff00), size: 30),
          Icon(Icons.flash_on, color: Color(0xFFf7ff00), size: 30),
          Icon(Icons.flash_on, color: Color(0xFFf7ff00), size: 30),
        ],
        animationDuration: Duration(milliseconds: 150),
        animationCurve: Curves.bounceInOut,
      );

  Widget get _bottomNavigator => BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.priority_high), title: Divider()),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Divider()),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Divider()),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Divider()),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Divider()),
        ],
        type: BottomNavigationBarType.fixed,
      );

  Widget get _appBar => AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: _appBarItems,
      );

  Widget get _appBarItems => Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: <Widget>[
          Container(
            width: 300,
            child: _searchTextField,
          ),
        ],
      );

//Widget get _bottomNavigator => BottomNavigationBar(items: _bottomItems);

  Widget get _searchTextField => TextField(
      maxLines: 1,
      decoration: InputDecoration(
        fillColor: Color(0xFFF9F9F9),
        contentPadding: EdgeInsets.all(0),
        hintText: "Search",
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        filled: true,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ));

  OutlineInputBorder get outlineInputBorder => OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(25));
}
