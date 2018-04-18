import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'package:servicestack/client.dart';

import 'test.dtos.dart';
import 'techstacks.dtos.dart';

const TestBaseUrl = "http://test.servicestack.net";
const TechStacksBaseUrl = "https://www.techstacks.io";

var testClient = new JsonServiceClient(TestBaseUrl);
var techstacksClient = new JsonServiceClient(TechStacksBaseUrl);

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new HelloFlutter(),
    );
  }
}

class HelloFlutter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HelloFlutterState();
}

class HelloFlutterState extends State<HelloFlutter> {
  //State for this widget
  String result = "";
  Uint8List imageBytes = new Uint8List(0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //appBar: new AppBar(title: new Text("Input Text"), backgroundColor: Colors.deepOrange),
      body: new Container(
        margin: new EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0.0),
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new Column(children: <Widget>[
                new ButtonTheme(
                  minWidth: 60.0,
                  padding: new EdgeInsets.all(5.0),
                  child: new ButtonBar(children: <Widget>[
                    new RaisedButton(
                      child: new Text("Async"),
                      onPressed: () async {
                        var r = await testClient.get(new Hello(name: "Async"));
                        setState(() {
                          result = r.result;
                        });
                      },
                    ),
                    new RaisedButton(
                      child: new Text("Auth"),
                      onPressed: () async {
                        var auth = await testClient.post(new Authenticate(
                            provider: "credentials",
                            userName: "test",
                            password: "test"));
                        var r =
                            await testClient.get(new HelloAuth(name: "Auth"));
                        setState(() {
                          result =
                              "${r.result} your JWT is: ${auth.bearerToken}";
                        });
                      },
                    ),
                    new RaisedButton(
                      child: new Text("JWT"),
                      onPressed: () async {
                        var auth = await testClient.post(new Authenticate(
                            provider: "credentials",
                            userName: "test",
                            password: "test"));

                        var newClient = new JsonServiceClient(TestBaseUrl)
                          ..refreshToken = auth.refreshToken;
                        var r = await newClient.get(new HelloAuth(name: "JWT"));
                        setState(() {
                          result =
                              "${r.result} your RefreshToken is: ${auth.refreshToken}";
                        });
                      },
                    ),
                    new RaisedButton(
                      child: new Text("Query"),
                      onPressed: () async {
                        var techs = await techstacksClient.get(
                            new FindTechnologies(),
                            args: {"slug": "flutter"});
                        var posts = await techstacksClient.get(new QueryPosts(
                            anyTechnologyIds: [techs.results[0].id],
                            types: ['Announcement', 'Showcase'])
                          ..take = 1);
                        setState(() {
                          result =
                              "Latest Flutter Announcement:\n“${posts.results[0].title}”";
                        });
                      },
                    ),
                    new RaisedButton(
                      child: new Text("Batch"),
                      onPressed: () async {
                        var requests = ['foo', 'bar', 'qux']
                            .map((name) => new Hello(name: name));
                        var responses = await testClient.sendAll(requests);
                        setState(() {
                          result =
                              "Batch Responses:\n${responses.map((r) => r.result).join('\n')}";
                        });
                      },
                    ),
                    new RaisedButton(
                      child: new Text("Image"),
                      onPressed: () async {
                        Uint8List bytes = await testClient.get(new HelloImage(
                            name: "Flutter",
                            fontFamily: "Roboto",
                            background: "#0091EA",
                            width: 500,
                            height: 170));
                        setState(() {
                          result = "";
                          imageBytes = bytes;
                        });
                      },
                    ),
                  ]),
                ),
                new Container(padding: EdgeInsets.only(top: 15.0)),
                result != null && result != "" 
                    ? new Text(result) 
                    : new Image.memory(imageBytes, width:500.0, height:170.0),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

// new Text(result)
