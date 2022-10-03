import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleFont = GoogleFonts.questrial(
  fontSize: 38,
  fontWeight: FontWeight.normal,
);

TextStyle subtitleFont = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.normal,
);

TextStyle bodyFont = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.normal,
);

TextStyle semiboldFont = GoogleFonts.poppins(
  fontSize: 15,
  fontWeight: FontWeight.w700,
);

TextStyle titleCard(Color color) {
  return GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: color,
  );
}

TextStyle valueCard(Color color) {
  return GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: color,
  );
}
