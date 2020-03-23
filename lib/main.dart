import 'package:flutter/material.dart';
import 'package:flutter_navigatiom/screens/newPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigation demo',
        style: TextStyle(color: Colors.white)),
      ),
      drawer: new Drawer(
       

        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Tenzin Thinlay'), accountEmail: Text('tenthinlay007@gmail.com')
            ,currentAccountPicture: CircleAvatar( 
              backgroundColor: Colors.white,
              child: Text("t"),

            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.red,
              child: Text("O"), )
            ],
            ),

            ListTile(
              title: Text('Page one'),
              trailing: Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> new NewPage('Page One')
                )
                );


              },
            ),
            Divider(),
            ListTile(
              title: Text('Page two'),
              trailing: Icon(Icons.arrow_downward),
               onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> new NewPage('Page One')
                )
                );
               }

            ),
            Divider(),
            ListTile(
              title: Text('close'),
              trailing: Icon(Icons.close),
               onTap: (){
                Navigator.of(context).pop();
               }
                     )
          ],
        ),
      ),
      body: null,
    ));
  }
}
