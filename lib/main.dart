import 'package:flutter/material.dart';

void main() {
  runApp(Destini());
}

class Destini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage('images/background.png'),
              fit: BoxFit.cover

            ),
          ),



          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    'The Story goes here',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text('Choice1',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,

                  ),
                  child: Text('Choice1',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
