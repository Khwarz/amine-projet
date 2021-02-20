import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ajouter des utilisateurs',
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12.0),
            RaisedButton(
              child: Icon(Icons.add, color: Colors.white),
              padding: const EdgeInsets.all(8.0),
              onPressed: () {},
              shape: CircleBorder(),
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

class SecondaryPage extends StatefulWidget {
  SecondaryPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _SecondaryPage createState() => _SecondaryPage();
}

class _SecondaryPage extends State<SecondaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Liste des clients", style: TextStyle(color: Colors.green)),
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey[800],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            PhysicalModel(
              color: Colors.grey[200],
              elevation: 4.0,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                  ),
                  title: Text("Foulen Ben foulen"),
                  subtitle: RichText(
                    text: TextSpan(
                        text: "Articles nécessitant une ordonnance\n",
                        style: TextStyle(color: Colors.grey[700], fontSize: 13),
                        children: [
                          TextSpan(
                              text: "Il y a 2 minutes",
                              style: Theme.of(context).textTheme.caption),
                        ]),
                  ),
                  isThreeLine: true,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            PhysicalModel(
              color: Colors.grey[200],
              elevation: 4.0,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Foulen Ben foulen"),
                        Text("95.400", style: TextStyle(color: Colors.green)),
                      ],
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                          text: "Articles nécessitant une ordonnance\n",
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 13),
                          children: [
                            TextSpan(
                                text: "Il y a 2 minutes",
                                style: Theme.of(context).textTheme.caption),
                          ]),
                    ),
                    isThreeLine: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}