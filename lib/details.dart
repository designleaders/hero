import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Hero(
              tag: 'city',
              child: Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2Funsplash%2Fposts%2Fnew-unsplashcomnew%2F899481746859271%2F&psig=AOvVaw24w168C_pM8Z1HXGwxg2-E&ust=1641807801395000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCMCDpeywpPUCFQAAAAAdAAAAABAJ',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'The Boston City',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'detials of the city :' +
                  lipsum.createParagraph(numParagraphs: 4),
            ),
          ],
        ),
      ),
    );
  }
}
