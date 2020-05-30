import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Bom dia, ',
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Paulo!',
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              height: 200,
              width: 300,
              child: Card(
                elevation: 15,
                color: Colors.indigoAccent,
              ),
            )
          ],
        ),
      ],
    );
  }
}
