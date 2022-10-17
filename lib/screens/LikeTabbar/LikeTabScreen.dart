import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LikeTabScreen extends StatefulWidget {
  const LikeTabScreen({Key? key}) : super(key: key);

  @override
  State<LikeTabScreen> createState() => _LikeTabScreenState();
}

class _LikeTabScreenState extends State<LikeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (b, i) {
        return Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/home 1.png",
                  height: 38,
                ),
                Text("Username 1",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF191B22))),
                Icon(
                  Icons.favorite_border_outlined,
                )
              ],
            )
          ],
        );
      }),
    );
  }
}
