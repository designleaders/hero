import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:splash_screen/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.lightBlue[900],
        title: Text('Hero Animation'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 700,
          child: Card(
            child: Column(
              children: [
                InkWell(
                  hoverColor: Colors.purple,
                  highlightColor: Colors.blue,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsPage()));
                  },
                  child: Container(
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Hero(
                        tag: 'city',
                        child: Image.network(
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Funsplash%2Fposts%2Fnew-unsplashcomnew%2F899481746859271%2F&psig=AOvVaw24w168C_pM8Z1HXGwxg2-E&ust=1641807801395000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCMCDpeywpPUCFQAAAAAdAAAAABAJ',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'The NewYork City',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'detials of the city :' +
                      lipsum.createParagraph(numSentences: 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
