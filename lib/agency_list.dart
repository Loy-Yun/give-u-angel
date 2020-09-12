import 'package:flutter/material.dart';
import 'agency_list/detail_page.dart';
import 'agency_list/lesson.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ListTile makeListTile(Lesson lesson) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        height: 200.0,
        width: 130.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'http://blogfiles.naver.net/20111005_244/qufwhd23_1317820011524joyvX_JPEG/main_banner1.jpg') //수정하고싶음
            )),
      ),
      title: Text(
        lesson.title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(lesson.level,
                    style: TextStyle(color: Colors.black))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(lesson: lesson)));
      },
    );

    Card makeCard(Lesson lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        height: 100,
        //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(lesson),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '기관 목록',
          style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
      body: makeBody,
    );
  }
}

List getLessons() {
  return [
    Lesson(
        title: "Save the Children",
        level: "Save",
        price: 100,
        content: "기부 내용",
        photo: 'http://blogfiles.naver.net/20111005_244/qufwhd23_1317820011524joyvX_JPEG/main_banner1.jpg' ),
    Lesson(
        title: "Observation at Junctions",
        level: "Beginner",
        price: 50,
        content: "기부 내용"),
    Lesson(
        title: "Reverse parallel Parking",
        level: "Intermidiate",
        price: 30,
        content: "기부 내용"),
    Lesson(
        title: "Reversing around the corner",
        level: "Intermidiate",
        price: 30,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Incorrect Use of Signal",
        level: "Advanced",
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Engine Challenges",
        level: "Advanced",
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Self Driving Car",
        level: "Advanced",
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  ")
  ];
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '이게 뭐지',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),

    );
  }
}