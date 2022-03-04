import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 25),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.green, Colors.greenAccent],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 120, minHeight: 45),
                          alignment: Alignment.center,
                          child: Text(
                            "Shift Availability",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 25),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 120, minHeight: 45),
                          alignment: Alignment.center,
                          child: Text(
                            "Select date for \n"
                            "the shift",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 25),
                    child: RaisedButton(
                      onPressed: () {},
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(50.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.white],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 100, minHeight: 45),
                          alignment: Alignment.center,
                          child: Text(
                            "Map View",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 350,
                height: 100,

                padding: EdgeInsets.only(top: 40),
                child: Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(

                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20,left: 15),
                    child: Text(
                      "October,2022",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),

                  ),

                ),
              ),
              Container(

                height: 400,
                width: 350,
                child: Stack(
                  children: [
                    Container(
                      height: 510,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          // topRight: Radius.circular(30),
                          // topLeft: Radius.circular(30),
                        ),
                      ),
                    ),
                    Positioned(
                      child: TableCalendar(
                        firstDay: DateTime.utc(2010, 10, 20),
                        lastDay: DateTime.utc(2040, 10, 20),
                        focusedDay: DateTime.now(),
                       // headerVisible: true,
                        //daysOfWeekVisible: true,
                      //  sixWeekMonthsEnforced: true,
                        //  shouldFillViewport: false,
                        headerStyle: HeaderStyle(
                            titleTextStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.w800)),
                        calendarStyle: CalendarStyle(
                            todayTextStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
