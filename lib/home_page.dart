import 'package:flutter/material.dart';

import 'services_page_view.dart';
import 'bottom_modal_sheet.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('asset/images/home_bg.png', fit: BoxFit.cover),
            Card(
              color: Color(0xCCFFFFFF),
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Image.asset('asset/images/logo.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: Text(
                        "Facility Management \n a servizio di imprese e cittadini",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyServicesPageView()),
                        );
                      },
                      child: Text("RICHIEDI INTERVENTO"),
                      textColor: Colors.white,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        showHomeModalSheet(context);
                      },
                      child: Text("FAI UN PREVENTIVO"),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      } else {
        return Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('asset/images/home_bg.png', fit: BoxFit.cover),
            Card(
              color: Color(0xCCFFFFFF),
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 40.0),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.0),
                            child: Image.asset(
                              'asset/images/logo.png',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Text(
                              "Facility Management \n a servizio di imprese e cittadini",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              textScaleFactor: 1.1,
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            color: Theme.of(context).primaryColor,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyServicesPageView()),
                              );
                            },
                            child: Text("RICHIEDI INTERVENTO"),
                            textColor: Colors.white,
                          ),
                          RaisedButton(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                              showHomeModalSheet(context);
                            },
                            child: Text("FAI UN PREVENTIVO"),
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        );
      }
    });
  }
}