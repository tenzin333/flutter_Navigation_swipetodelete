import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  String title;
  NewPage(this.title);
  final List<String> items =
      new List<String>.generate(30, (i) => "items ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, int index) {
            return Dismissible(
                key: Key(items[index]),
                onDismissed: (direction) {
                  items.removeAt(index); 
                  Scaffold.of(context).removeCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(new SnackBar(
                    content: Text('${items[index]} removed',
                  
                    
                  ),
                  ));
                 
                },
                background: new Container(color: Colors.greenAccent), 
              
                child: ListTile(
                  title: Text(items[index]),
                ));
          }),
    );
  }
}
