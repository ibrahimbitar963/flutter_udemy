
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg/723px-Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg',
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 23,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                foregroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.camera_alt,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                foregroundColor: Colors.white,
                radius: 20,
                child: Icon(
                  Icons.edit,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 20),
              Container(
                height: 110,
                child: ListView.separated(

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return bulidStoryItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: 6,
                ),
              ),
              SizedBox(
                  height: 30),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics() ,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return bulidChatItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemCount: 16,
              ),
            ],

          ),
        ),
      ),
    );
  }

  Widget bulidChatItem() =>Row(
    children: [
      CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg/723px-Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg'
        ),
      ),
      Text(
        'Hello my name is ibrahim',
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),

        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
        ),

      ),

    ],
  );

  Widget bulidStoryItem() =>Container(
    child: Container(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg/723px-Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg',
                ),
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.red,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Ibrahim bitar bitar bitar',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
