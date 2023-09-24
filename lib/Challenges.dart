import 'package:flutter/material.dart';

class Challenges extends StatefulWidget {
  const Challenges({Key? key});

  @override
  State<Challenges> createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  List<Map<String, String>> challengeData = [
    {
      'title': 'Meditation Games',
      'imageUrl':
          'https://www.giantbomb.com/a/uploads/scale_medium/8/81005/2612315-rivia-5.jpg',
    },
    {
      'title': 'Puzzle Games',
      'imageUrl':
          'https://images.pushsquare.com/c9f9ba385a2c2/best-ps4-playstation-4-puzzle-games-guide-1.large.jpg',
    },
    {
      'title': 'Read a Book',
      'imageUrl':
          'https://w0.peakpx.com/wallpaper/479/644/HD-wallpaper-i-reading-art-fantasy-reading-butterfly-book-digital-art.jpg',
    }
  ];

  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search for challenges',
                prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 187, 27, 93),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB7346B), width: 3.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 238, 141, 181), width: 3.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                labelStyle: TextStyle(
                color: Color(0xFFB7346B), 
    ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: challengeData.length,
              itemBuilder: (context, index) {
                final challenge = challengeData[index];
                final imageUrl = challenge['imageUrl'] ?? '';
                final title = challenge['title'] ?? '';

                // Check if the title contains the search text
                if (searchText.isNotEmpty &&
                    !title.toLowerCase().contains(searchText.toLowerCase())) {
                  return SizedBox.shrink(); // Hide the item if not matching
                }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
