import 'package:flutter/material.dart';

bool isItGride = false;
int currentNav = 0;
List<String> newCategory = [
  "Tops",
  "Shirts & Blouses",
  "Cardigans & Sweaters",
  "Knitwear",
  "Blazers",
  "Outerwear",
  "Pants",
  "Jeans",
  "Shorts",
  "Skirts",
  "Dresses"
];
int categoryPageIndex = 0;
String categoryPageTitle = "";
RangeValues currentRangeValues = const RangeValues(0, 100);

//sort by bool
bool popular = false;
bool newest = false;
bool customer_review = false;
bool Price_lowest_to_high = true;
bool Price_highest_to_low = false;

//colors check

bool blackCheck = false;
bool grayCheck = false;
bool redCheck = false;
bool brawonCheck = false;
bool yellowCheck = false;
bool blueCheck = false;

//size check

bool xsCheck = false;
bool sCheck = false;
bool mCheck = false;
bool lCheck = false;
bool xlCheck = false;

//category check

bool all = false;
bool women = false;
bool men = false;
bool boys = false;
bool girls = false;
