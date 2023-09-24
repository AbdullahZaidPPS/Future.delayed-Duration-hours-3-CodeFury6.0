import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          ClipOval(
            child: Image.network(
              'https://i.pinimg.com/736x/07/33/ba/0733ba760b29378474dea0fdbcb97107.jpg',
              width: 168,
              height: 168,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile Name: CrimsonLark22',
                  style: TextStyle(
                    color: Color(0xFF000000), // Color corresponds to #000
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    height: 1.0,
                  ),
                ),
                Text(
                  'Username: @crimson_22',
                  style: TextStyle(
                    color: Color(0xFF000000), // Color corresponds to #000
                    fontFamily: 'Lato',
                    fontSize: 15.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400, // FontWeight corresponds to font-weight: 400
                    height: 1.0, // Line height corresponds to normal
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFFFF7279), width: 2),
                      ),
                      child: Icon(Icons.rocket), // Use Icon widget for icons
                    ),
                    SizedBox(width: 10),
                    Text(
                      '23987',
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.normal, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Interests',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Music'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Dance'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Art'),
              ),
              // Add more interest buttons here
            ],
          ),
        ],
      ),
    );
  }
}
