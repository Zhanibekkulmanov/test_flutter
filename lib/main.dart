import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _value = 0;

  int selected = 0;
  int selectedBPM = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a1e23),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.all_inclusive_outlined,
                      color: Colors.grey,
                    ),
                    Text('30 min', style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),
              SfSlider(
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
                min: 0,
                max: 30,
                value: _value,
                interval: 5,
                showTicks: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              SizedBox(
                height: 100,
                child: RotatedBox(
                    quarterTurns: -1,
                    child: ListWheelScrollView(
                      onSelectedItemChanged: (x) {
                        setState(() {
                          selected = x;
                        });
                      },
                      itemExtent: 100,
                      children: [
                        RotatedBox(
                            quarterTurns: 1,
                            child: Text('Resonance', style: TextStyle(color: 0 == selected
                                ? Colors.white
                                : Colors.grey),)
                        ),
                        RotatedBox(
                            quarterTurns: 1,
                            child: Text('Balance', style: TextStyle(color: 1 == selected
                                ? Colors.white
                                : Colors.grey),)
                        ),
                        RotatedBox(
                            quarterTurns: 1,
                            child: Text('Strength', style: TextStyle(color: 2 == selected
                                ? Colors.white
                                : Colors.grey),)
                        ),
                        RotatedBox(
                            quarterTurns: 1,
                            child: Text('Focus', style: TextStyle(color: 3 == selected
                                ? Colors.white
                                : Colors.grey),)
                        )
                      ]
                    )
                ),
              ),
              SizedBox(
                height: 100,
                child: RotatedBox(
                    quarterTurns: -1,
                    child: ListWheelScrollView(
                        onSelectedItemChanged: (x) {
                          setState(() {
                            selectedBPM = x;
                          });
                        },
                        itemExtent: 80,
                        children: [
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('7.5 bpm', style: TextStyle(color: 0 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          ),
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('7 bpm', style: TextStyle(color: 1 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          ),
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('6 bpm', style: TextStyle(color: 2 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          ),
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('5.5 bpm', style: TextStyle(color: 3 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          ),
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('5 bpm', style: TextStyle(color: 4 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          ),
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('4 bpm', style: TextStyle(color: 5 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          ),
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('3 bpm', style: TextStyle(color: 6 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          ),
                          RotatedBox(
                              quarterTurns: 1,
                              child: Text('2.1 bpm', style: TextStyle(color: 7 == selectedBPM
                                  ? Colors.white
                                  : Colors.grey),)
                          )
                        ]
                    )
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
