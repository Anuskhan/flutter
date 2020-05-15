import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "login",
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String label = "";
  String show = "";
  click() {
    setState(() {
      show = label;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
            // color: Colors.black54,
            // colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.asset(
                  "assets/images/icon.png",
                  height: 120.0,
                  width: 120.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                        height: 400.0,
                        width: 380.0,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("$show"),
                            TextField(
                              onChanged: (text) {
                                label = text;
                              },
                              autocorrect: false,
                              autofocus: false,
                              style: TextStyle(fontSize: 20.0),
                              decoration: InputDecoration(
                                  labelText: "user",
                                  hintText: "User",
                                  // helperText: "user",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: EdgeInsets.all(15.0)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: TextField(
                                obscureText: true,
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(fontSize: 20.0),
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "Password",
                                    // helperText: "Password",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: EdgeInsets.all(15.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Forget password ??",
                                    style: TextStyle(fontSize: 18.0),
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(
                              color: Colors.red,
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              onPressed: click,
                              child: Text("Login"),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Image.asset("assets/images/bg1.png"),
//       ),
//     );
//   }
// }

// Color c = const ;
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.red),
//       title: "state full",
//       home: homepage(),
//     );
//   }
// }

// class homepage extends StatefulWidget {
//   @override
//   _homepageState createState() => _homepageState();
// }

// class _homepageState extends State<homepage> {
//   int dataChange = 0;
//   void datachange() {
//     setState(() {
//       dataChange += 1;
//     });
//   }

//   void datachanges() {
//     setState(() {
//       dataChange -= 2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("App bar"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text("$dataChange"),
//             RaisedButton(
//               onPressed: datachange,
//               child: Text("click me"),
//               color: Colors.cyan,
//             ),
//             RaisedButton(
//               onPressed: datachanges,
//               child: Text("click --"),
//               color: Colors.cyan,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "First appp",
//       theme: ThemeData(primaryColor: Color(0xFF42A5F5)),
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               "sample sssr app",
//               textAlign: TextAlign.right,
//               style: new TextStyle(
//                   color: Colors.red,
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                   backgroundColor: Colors.green),
//             ),
//           ),
//           body: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Column(
//                     children: <Widget>[],
//                   ),
//                   Text("sdfds"),
//                   Text("sdfds"),
//                   Text("sdfds"),
//                 ],
//               ),
//               // Text("first children"),
//               RaisedButton(
//                 onPressed: null,
//                 child: Text("button"),
//               )
//             ],
//           )),
//     );
//   }
// }
