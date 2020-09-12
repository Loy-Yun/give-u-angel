import 'package:angel/category.dart';
import 'package:flutter/material.dart';
import 'package:angel/loginpage.dart';

//void main() => runApp(MaterialApp(home: StarsPage()));

class StarsPage extends StatelessWidget {

  final UserDetails detailsUser;

  StarsPage(this.detailsUser);

  final choices = ['물병자리', '물고기자리', '양자리', '황소자리', '쌍둥이자리', '게자리', '사자자리','처녀자리','천칭자리','전갈자리','사수자리','염소자리'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        drawer: Drawer(child: Category(detailsUser),),
        appBar: AppBar(

          title: Text('별자리'),
          bottom: TabBar(

            tabs: choices.map((String choice) {

              return Tab(text: choice);
            }).toList(),
            isScrollable: true,         // 많으면 자동 스크롤
          ),
        ),

        body: TabBarView(
          children: choices.map((String choice) {
            return Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[

                    Text(
                      choice,
                      style: TextStyle(fontSize: 31),
                    ),

                  ],
                )

            );

          }).toList(),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _addStars,// onpressed:(){print('Clicked');},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }



  void _addStars() {

  }
}






