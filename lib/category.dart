import 'package:angel/setting.dart';
import 'package:flutter/material.dart';
import 'package:angel/profile.dart';
import 'agency_list.dart';
import 'loginpage.dart';



class Category extends StatelessWidget {

  final UserDetails detailsUser;

  Category(this.detailsUser);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                /*
                accountName: Text(detailsUser.userName),
                accountEmail: Text(detailsUser.userEmail),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(detailsUser.photoUrl),
                ),
                */
                accountName: Text("test"),
                accountEmail: Text("test"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/logo4"),
                ),
              ),
              ListTile(
                title : Text('Settings'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Setting()));

                },
              ),
              ListTile(
                title : Text('My Page'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => UserProfilePage(this.detailsUser)));
                },
              ),
              ListTile(
                title : Text('list'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ListPage()));
                },
              ),
            ],
      ),
    );
  }
}
