import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy/models/users/users_model.dart';


class UsersScreen extends StatelessWidget {
          List<UserModel> Users = [
            UserModel(
              id: 1,
              name: 'ahmad',
              phone:  '0043',
            ),
            UserModel(
              id: 2,
              name: 'ibta',
              phone:  '0043',
            ),
            UserModel(
              id: 3,
              name: 'sam',
              phone:  '0043',
            ),
            UserModel(
              id: 1,
              name: 'ahmad',
              phone:  '0043',
            ),
            UserModel(
              id: 2,
              name: 'ibta',
              phone:  '0043',
            ),
            UserModel(
              id: 3,
              name: 'sam',
              phone:  '0043',
            ),
            UserModel(
              id: 1,
              name: 'ahmad',
              phone:  '0043',
            ),
            UserModel(
              id: 2,
              name: 'ibta',
              phone:  '0043',
            ),
            UserModel(
              id: 3,
              name: 'sam',
              phone:  '0043',
            ),
            UserModel(
              id: 1,
              name: 'ahmad',
              phone:  '0043',
            ),
            UserModel(
              id: 2,
              name: 'ibta',
              phone:  '0043',
            ),
            UserModel(
              id: 3,
              name: 'sam',
              phone:  '0043',
            ),


          ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'users'
        ),
      ),
      body: ListView.separated(itemBuilder: (context , index) => bulidUserItem(Users[index]),
          separatorBuilder: (context , index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: Users.length,
      ),

    );
  }
  Widget bulidUserItem (UserModel Users){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: Text(
              '${Users.id}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${Users.name}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,

                ),

              ),
              Text(
                '${Users.phone}',
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),



        ], //Children
      ),
    );
  }
}
