import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              print('main menu');
            },
          ),
          title: Text('Sample APP'),
          actions: [
            Icon(Icons.notifications_active),
            IconButton(
              onPressed: () {
                print('press to call');
              },
              icon: Icon(
                Icons.add_call,
              ),
            ),
          ],
          centerTitle: true,
          primary: true,
          elevation: 100,
          backgroundColor: Colors.teal,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration:  BoxDecoration(

                borderRadius:  BorderRadius.circular(
                    10),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://www.xda-developers.com/files/2018/02/Flutter-Framework-Feature-Image-XDA-Portal-Red.png'),
                    width: 200,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    color: Colors.black.withOpacity(.5),
                    child: Text('Flutter ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
