

import 'package:angel/category.dart';
import 'package:flutter/material.dart';
import 'package:angel/loginpage.dart';

class MessagePage extends StatelessWidget {
  final UserDetails detailsUser;

  MessagePage(this.detailsUser);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Category(detailsUser),
      ),

      appBar: AppBar(
        title: Text(
          "Message",
        ),

      ),


      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              margin: EdgeInsets.only(left:15, right: 15, top: 5, bottom: 5,),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    prefix: Icon(Icons.search) ,
                    fillColor: Colors.grey,
                    border: InputBorder.none),
              ),
              decoration: BoxDecoration(
                border:Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),



          ),
          SliverList(
              delegate: SliverChildListDelegate(
                  List.generate(
                      10,
                          (int i) {
                        return _chatListItem(i);
                      }
                  )
              )
          )
        ],
      ),


    );
  }

  Widget _chatListItem(int i){
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 5, right: 10,left: 10),
      child: Row(

        children: <Widget>[
          Column(
            children: <Widget>[

              CircleAvatar(
                backgroundImage: AssetImage("assets/$i.jpg"),
              ),

              Container(
                child: Text(
                  "기부천사",
                ),
                margin: EdgeInsets.only(top:5,),
              )
            ],
          ),

          SizedBox(
            width: 10,
          ), ///////////////
          Container(
            decoration: BoxDecoration(

              borderRadius: BorderRadius.all(
                  Radius.circular(20)
              ),
              color: Colors.grey,
            ),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text("기부천사에 후원해 주셔서 감사합니다. \n 남은 돈은 50,000원 입니다. \n 좋은 하루 보내세요~ "),
            ),
          ),
        ],
      ),
    );
  }
}