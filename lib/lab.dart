import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentValueRed = 50.0;
  double _currentValueGreen = 50.0;
  double _currentValueBlue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CS-31 Myronchuk Andrij',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              Container(height: 200,
              width: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, _currentValueRed.toInt(), _currentValueGreen.toInt(), _currentValueBlue.toInt())
                ),
              ),
          SizedBox(height: 15,),
          Row(
              children: [
                Text('     Red: '+_currentValueRed.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red,),)

              ],),
              Slider(
              label: 'Red',
              value: _currentValueRed,
              min: 0,
              max: 248,
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              thumbColor: Colors.red,
              onChanged: (double value) {
                setState(() {
                  _currentValueRed = value;
                });
              },
            ),Row(
                children: [
                  Text('    Green: '+_currentValueGreen.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green,),)

                ],
              ),
              Slider(
                value: _currentValueGreen,
                min: 0,
                max: 248,
                activeColor: Colors.green, 
                inactiveColor: Colors.black,
                thumbColor: Colors.green,
                onChanged: (double value) {
                  setState(() {
                    _currentValueGreen = value;
                  });
                },
              ),
              Row(
                children: [
                  Text('     Blue: '+_currentValueBlue.toStringAsFixed(0), style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue,),)

                ],),
              Slider(
                value: _currentValueBlue,
                min: 0,
                max: 248,
                activeColor: Colors.blue, 
                inactiveColor: Colors.black,
                thumbColor: Colors.blue, 
                onChanged: (double value) {
                  setState(() {
                    _currentValueBlue = value;
                  });
                },
              ),
          ]
          ),
        ),
      ),
    );
  }
}
