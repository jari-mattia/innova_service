import 'package:flutter/material.dart';

import 'bottom_modal_sheet.dart';

class MyServicesPage extends StatefulWidget {
  MyServicesPage(
      Key key, this.av, this.bg, this.title, this.desc, this.color, this.arrow)
      : super(key: key);
  final String av;
  final String bg;
  final String title;
  final String desc;
  final Color color;
  final Widget arrow;

  @override
  _MyServicesPageState createState() => new _MyServicesPageState();
}

class _MyServicesPageState extends State<MyServicesPage> {
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Scaffold(
          backgroundColor: widget.color,
          appBar: AppBar(
              backgroundColor: widget.color,
              title: Text("Innova Service")),
          body: Stack(
            children: <Widget>[
              Container(
                key: Key("page_bg"),
                foregroundDecoration: BoxDecoration(color: Color(0x22000000)),
                child: Image.asset(
                  "asset/images/${widget.bg}",
                  alignment: Alignment.topCenter,
                ),
              ),
              ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 180.0),
                        alignment: Alignment.bottomCenter,
                        child: Card(
                          elevation: 6.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 30.0,
                                    top: 120.0,
                                    right: 30.0,
                                    bottom: 40.0),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                      child: Text(
                                        "${widget.title}",
                                        textAlign: TextAlign.center,
                                        textScaleFactor: 1.4,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Text(
                                      "${widget.desc}",
                                      softWrap: true,
                                      textAlign: TextAlign.justify,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 40.0),
                                      child: RaisedButton(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20.0, horizontal: 70.0),
                                        color: widget.color,
                                        onPressed: () {
                                          showHomeModalSheet(context);
                                        },
                                        child: Text("FAI UN PREVENTIVO"),
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 100.0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 85.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 105.0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("asset/images/${widget.av}"),
                              radius: 80.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              widget.arrow,
            ],
          ),
        );
      } else
        return Scaffold(
          backgroundColor: widget.color,
          appBar: AppBar(
              backgroundColor: widget.color,
              title: Text("Innova Service")),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                key: Key("page_bg"),
                foregroundDecoration: BoxDecoration(color: Color(0x22000000)),
                child: Image.asset(
                  "asset/images/${widget.bg}",
                  fit: BoxFit.cover,
                ),
              ),
              ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 180.0),
                        alignment: Alignment.bottomCenter,
                        child: Card(
                          elevation: 6.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 30.0,
                                    top: 120.0,
                                    right: 30.0,
                                    bottom: 40.0),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                      child: Text(
                                        "${widget.title}",
                                        textAlign: TextAlign.center,
                                        textScaleFactor: 1.4,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Text(
                                      "${widget.desc}",
                                      softWrap: true,
                                      textAlign: TextAlign.justify,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 40.0),
                                      child: RaisedButton(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20.0, horizontal: 210.0),
                                        color: widget.color,
                                        onPressed: () {
                                          showHomeModalSheet(context);
                                        },
                                        child: Text("FAI UN PREVENTIVO"),
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 100.0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 85.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 105.0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage("asset/images/${widget.av}"),
                              radius: 80.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              widget.arrow,
            ],
          ),
        );
    });
  }
}
