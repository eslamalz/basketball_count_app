import 'package:flutter/material.dart';

void main() {
  runApp(Basscounter());
}

class Basscounter extends StatefulWidget {
  @override
  State<Basscounter> createState() => _BasscounterState();
}

class _BasscounterState extends State<Basscounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  void addonepoint() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Points counter',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        body: Padding(
          padding: const EdgeInsets.all(11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(),
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(
                          fontSize: 90,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            teamApoints++;

                            setState(() {});
                            print(teamApoints);
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              teamApoints += 2;
                              setState(() {});
                              print(teamApoints);
                            },
                            child: Text(
                              "Add 2 Point",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            teamApoints += 3;
                            setState(() {});
                            print(teamApoints);
                          },
                          child: Text(
                            "Add 3 Point",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(
                          fontSize: 90,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            teamBpoints++;
                            print(teamBpoints);
                            setState(() {});
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50)),
                            onPressed: () {
                              teamBpoints += 2;
                              setState(() {});
                              print(teamBpoints);
                            },
                            child: Text(
                              "Add 2 Point",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            teamBpoints += 3;
                            setState(() {});
                            print(teamBpoints);
                          },
                          child: Text(
                            "Add 3 Point",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(200, 50)),
                  onPressed: () {
                    setState(() {});
                    teamApoints = 0;
                    teamBpoints = 0;
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
