import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:login_register/model/linechart.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<charts.Series> seriesList;
  bool animate;

  List<charts.Series<LineChartPojo, int>> createSampleData() {
    final data = [
      LineChartPojo(0, 5),
      LineChartPojo(1, 25),
      LineChartPojo(2, 100),
      LineChartPojo(3, 75),
      LineChartPojo(4, 85),
      LineChartPojo(5, 120),
    ];

    return [
      charts.Series<LineChartPojo, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LineChartPojo sales, _) => sales.year,
        measureFn: (LineChartPojo sales, _) => sales.income,
        data: data,
      )
    ];
  }

  @override
  void initState() {
    seriesList=createSampleData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF4F37B3),
                  border: Border.all(
                    color: Color(0xFF4F37B3),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        iconSize: 30.0,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        color: Colors.white,
                        iconSize: 30.0,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  ClipPath(
                    clipper: CustomShapeClipper(),
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        color: Color(0xFF4F37B3),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              width: 50.0,
                              height: 50.0,
                              image: AssetImage('assets/images/person.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Dinesh Maharjan",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24.0),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Mobile Application Developer",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 120.0, right: 16.0, left: 16.0),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Your Budget",
                              style: TextStyle(
                                  color: Color(0xFF4F37B3),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 32.0,
                            ),
                            Text(
                              "\$200,000.00",
                              style: TextStyle(
                                  color: Color(0xFF4F37B3),
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 300.0, right: 16.0, left: 16.0),
                    child: Container(
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "OverView",
                                      style: TextStyle(
                                        color: Color(0xFF4F37B3),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5F3FE),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Month",
                                      style: TextStyle(
                                        color: Color(0xFF4F37B3),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: new charts.LineChart(
                                seriesList,
                                animate: false,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.home),
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.watch_later),
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.location_on),
            ),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.person),
            ),
            title: Container(),
          ),
        ],
        fixedColor: Color(0xFF4F37B3),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 390.0 - 200);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
