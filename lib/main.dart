import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';

void main() => runApp(PaypalApp());

class PaypalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: _mainAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _paypalCard(),
                _activityText(),
                _activityList(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
            },
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            elevation: 9,

            items: [
              BottomNavigationBarItem(
                icon: ClipOval(
                  child: Container(
                    color:
                        index == 0 ? PaypalColors.LightBlue : PaypalColors.Grey,
                    child: Image.asset(
                      "assets/images/icon_home.png",
                      fit: BoxFit.scaleDown,
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontFamily: "worksans"),
                ),
              ),
              BottomNavigationBarItem(
                  icon: ClipOval(
                    child: Container(
                      color: index == 1
                          ? PaypalColors.LightBlue
                          : PaypalColors.Grey,
                      child: Image.asset(
                        "assets/images/icon_send.png",
                        fit: BoxFit.scaleDown,
                        width: 35.0,
                        height: 35.0,
                      ),
                    ),
                  ),
                  title: Text(
                    'Send',
                    style: TextStyle(fontFamily: "worksans"),
                  )),
              BottomNavigationBarItem(
                icon: ClipOval(
                  child: Container(
                    color:
                        index == 2 ? PaypalColors.LightBlue : PaypalColors.Grey,
                    child: Image.asset(
                      "assets/images/icon_recieve.png",
                      fit: BoxFit.scaleDown,
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                ),
                title: Text(
                  'Recieve',
                  style: TextStyle(fontFamily: "worksans"),
                ),
              ),
              BottomNavigationBarItem(
                icon: ClipOval(
                  child: Container(
                    color:
                        index == 3 ? PaypalColors.LightBlue : PaypalColors.Grey,
                    child: Image.asset(
                      "assets/images/icon_orion_user-group.png",
                      fit: BoxFit.scaleDown,
                      width: 35.0,
                      height: 35.0,
                    ),
                  ),
                ),
                title: Text(
                  'Raise money',
                  style: TextStyle(fontFamily: "worksans"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

AppBar _mainAppBar() {
  return AppBar(
    leading: Image.asset(
      'assets/images/icon_settings.png',
      color: PaypalColors.DarkBlue,
    ),
    title: Center(
      child: Image.asset('assets/images/Paypal-logo-header.png', height: 25),
    ),
    actions: <Widget>[
      Image.asset('assets/images/icon_school-bell.png',
          color: PaypalColors.DarkBlue)
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

Container _paypalCard() {
  return Container(
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
    decoration: BoxDecoration(
      color: Colors.white,
      border:
          Border.all(color: Colors.white, width: 0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
      boxShadow: [
        BoxShadow(
            color: PaypalColors.LightGrey19,
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 1)
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset('assets/images/Paypal-logo.png', height: 30),
                SizedBox(width: 20),
                Text(
                  'BALANCE',
                  style: TextStyle(
                      color: PaypalColors.DarkBlue,
                      fontFamily: "worksans",
                      fontSize: 12),
                ),
              ],
            ),
            Icon(Icons.info_outline, size: 18)
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/images/chip_thumb.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '\$',
                      style: TextStyle(fontFamily: "vistolsans", fontSize: 25),
                    ),
                    SizedBox(width: 13),
                    Text(
                      '452,20',
                      style: TextStyle(fontFamily: "sfprotext", fontSize: 45),
                    ),
                    SizedBox(width: 13),
                  ],
                ),
                Text(
                  'Available',
                  style: TextStyle(
                      fontFamily: "worksans",
                      color: PaypalColors.Grey,
                      fontSize: 17),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            SizedBox(
              height: 25,
              child: FlatButton(
                color: PaypalColors.LightGrey,
                textColor: PaypalColors.DarkBlue,
                child: Text(
                  "MR.RAGNAR LOTHBROK",
                  style: TextStyle(
                      fontFamily: "worksans",
                      color: PaypalColors.DarkBlue,
                      fontSize: 12),
                ),
                onPressed: () {
                  print('MR.');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ],
    ),
  );
}

Container _activityText() {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(width: 1, color: PaypalColors.LightGrey19))),
    margin: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 5),
    padding: EdgeInsets.only(bottom: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Activity',
          style: TextStyle(
              fontFamily: "worksans",
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'VIEW ALL',
              style: TextStyle(
                  fontFamily: "worksans",
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: PaypalColors.Grey),
            ),
            Icon(Icons.chevron_right, color: PaypalColors.Black50),
          ],
        ),
      ],
    ),
  );
}

ListView _activityList() {
  return ListView(
    shrinkWrap: true,
    physics: ClampingScrollPhysics(),
    padding: EdgeInsets.all(15),
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: _tileDecoration(),
        child: ListTile(
          leading: Image.asset('assets/images/Nike.png'),
          title: Text(
            'Nike Medieval',
            style: TextStyle(
                fontFamily: "worksans",
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          subtitle: Text(
            'Jan 21, 2019',
            style:
                TextStyle(fontFamily: "worksans", fontWeight: FontWeight.w300),
          ),
          trailing: Text(
            '-249,99 USD',
            style: TextStyle(fontFamily: "worksans"),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: _tileDecoration(),
        child: ListTile(
          leading: Image.asset('assets/images/photo.png'),
          title: Text(
            'Lagertha Lothbrok',
            style: TextStyle(
                fontFamily: "worksans",
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          subtitle: Text(
            'Jan 18, 2019',
            style:
                TextStyle(fontFamily: "worksans", fontWeight: FontWeight.w300),
          ),
          trailing: Text(
            '+102,00 USD',
            style: TextStyle(fontFamily: "worksans"),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: _tileDecoration(),
        child: ListTile(
          leading: ClipOval(
            child: Container(
              color: PaypalColors.LightBlue,
              child: Image.asset(
                "assets/images/icon_shop.png",
                fit: BoxFit.scaleDown,
                width: 35.0,
                height: 35.0,
              ),
            ),
          ),
          title: Text(
            'Spotify Finance Limited',
            style: TextStyle(
                fontFamily: "worksans",
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          subtitle: Text(
            'Jan 11, 2019',
            style:
                TextStyle(fontFamily: "worksans", fontWeight: FontWeight.w300),
          ),
          trailing: Text(
            '-9,99 USD',
            style: TextStyle(fontFamily: "worksans"),
          ),
        ),
      ),
    ],
  );
}

BoxDecoration _tileDecoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white, width: 0, style: BorderStyle.solid),
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    boxShadow: [
      BoxShadow(
          color: PaypalColors.LightGrey19,
          offset: Offset(0, 0),
          blurRadius: 3,
          spreadRadius: 1)
    ],
  );
}
