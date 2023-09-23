import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> imageUrls = [
    'https://thewmhionline.com/wp-content/uploads/2021/12/Online-courses-banner.jpg',
    'https://www.creativeeducation.co.uk/wp-content/uploads/2023/08/Mental-Health-Leads_-Preparing-for-the-Year-Ahead-624x351.jpg',
    'https://i.ytimg.com/vi/i2h1YrotzOU/maxresdefault.jpg',
    'https://mentallyhealthyschools.org.uk/media/2696/smhl-twitter-linkedin-18-aug.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFB6D78),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lato',
            fontSize: 24.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            height: 1.0,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 2),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Courses",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Lato',
                        fontSize: 16.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: imageUrls.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                spreadRadius: 0,
                              ),
                            ],
                            color: Color(0xFFF9E6E7),
                          ),
                          child: Image.network(
                            imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top:10),
                          child: Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                // Action to perform when the button is pressed
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFF7279),
                                onPrimary: Colors.white,
                                padding: EdgeInsets.all(10),
                              ),
                              child: Text(
                                'Explore More',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
               Container(
                width: 150,
                height: 150,
                color: Colors.green, // Set your desired background color
                child: Center(
                  child: Text(
                    'New Container',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: homepage(),
  ));
}
