import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kGrey = Color(0xffD7D7D7);
const Color kGreyB7 = Color(0xffB7B7B7);
const Color kBlack = Color(0xff000000);
const Color kWhite = Color(0xffffffff);

const double kPadding20 = 20.0;
const double kPaddingHorizontal = 8.0;

final kInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: Colors.black54));

//Fonts
final kInterBold = GoogleFonts.inter(fontWeight: FontWeight.w700);

final kInterSemibold = GoogleFonts.inter(fontWeight: FontWeight.w600);

final kInterMedium = GoogleFonts.inter(fontWeight: FontWeight.w500);

final kInterRegular = GoogleFonts.inter(fontWeight: FontWeight.w400);
