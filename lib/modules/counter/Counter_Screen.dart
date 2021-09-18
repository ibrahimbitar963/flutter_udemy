import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();

}

class _CounterScreenState extends State<CounterScreen> {
      int counter = 1;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Container(
              color: Colors.lightGreenAccent,
              width: 100,
              height: 100,
              child: TextButton(onPressed: (){
                setState(() {
                  counter--;
                  print(counter);
                });

              },
                child: Text('Minus',
                  style: TextStyle(
                    color: Colors.grey[900],
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                        horizontal: 20,
              ),
              child: Text(
                  '${counter}',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.lightGreenAccent,
              child: TextButton(onPressed: (){
           setState(() {
               counter++;
               print(counter);

           });
                },
                child: Text('Plus',
                  style: TextStyle(
                    color: Colors.grey[900],
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
