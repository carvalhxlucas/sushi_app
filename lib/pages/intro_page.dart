import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25,),

          // restaurant name
            Text("SUSHI MAN", style: GoogleFonts.dmSerifDisplay(
              fontSize: 28,
              color: Colors.white
              ),
            ),
            const SizedBox(height: 25,),

          // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/img/hossomaki2.png'),
            ),
            const SizedBox(height: 25,),

          // tittle
            Text("THE TASTE OF JAPANESE FOOD", style: GoogleFonts.dmSerifDisplay(
                fontSize: 40,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 10,),

          // subtittle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            const SizedBox(height: 25,),

          // button
            MyButton(
              text: "Get Started",
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )

          ],
        ),
      ),
    );
  }
}
