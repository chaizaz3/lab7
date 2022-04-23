import 'dart:html';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseablewidget.dart';
import 'ChildW';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double currentSliderValue = 150;
  int weight = 60;
  int age = 25;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BMI Calculator',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            textTheme: TextTheme(bodyText2: TextStyle(color: Colors.grey))),
        home: Scaffold(
            appBar: AppBar(
              title: Text("BMI Calculator"),
            ),
            body: Column(children: [
              Expanded(
                  child: Row(
                children: [
                  reuseablewidget(
                      width: 140,
                      height: 150,
                      Color: Color(0xFF0A0E21),
                      newchild: ChildW(
                        nicon: Icon(FontAwesomeIcons.venus, size: 40),
                        ntext: "FEMALE",
                      )),
                  reuseablewidget(
                      width: 140,
                      height: 150,
                      Color: Color(0xFF0A0E21),
                      newchild: ChildW(
                        nicon: Icon(
                          FontAwesomeIcons.mars,
                          size: 40,
                        ),
                        ntext: "MALE",
                      ))
                ],
              )),
              Expanded(
                child: Row(children: [
                  reuseablewidget(
                    height: 170,
                    width: 300,
                    Color: Color(0xFF0A0E21),
                    newchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("HEIGHT"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              currentSliderValue.toString(),
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'cm',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbColor: Colors.pinkAccent,
                              inactiveTrackColor: Colors.grey,
                              activeTrackColor: Colors.pinkAccent,
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 7.0,
                              )),
                          child: Slider(
                            value: currentSliderValue,
                            min: 50,
                            max: 400,
                            divisions: 5,
                            label: currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: Row(
                  children: [
                    reuseablewidget(
                      width: 140,
                      height: 150,
                      Color: Color(0xFF0A0E21),
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    reuseablewidget(
                      height: 150,
                      width: 140,
                      Color: Color(0xFF0A0E21),
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}
