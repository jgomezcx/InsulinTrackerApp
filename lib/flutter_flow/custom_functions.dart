import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? carbohydrateInsulinUnitsToTake(
  double? ratioPerUnit,
  double? ratioPerCarbs,
  int? inputedCarbs,
) {
  if (inputedCarbs == null) {
    return 0;
  }
  // get the return value where the ratioPerUnit is multipled by the ( InputedCrabs/ratioPerCarbs) .
  if (ratioPerUnit == null || ratioPerCarbs == null) {
    return null;
  }
  final insulinUnits = (inputedCarbs / ratioPerCarbs);
  return insulinUnits.floorToDouble() * ratioPerUnit;
}

double? bloodGlucoseInsulinUnitsToTake(
  int? targetBG,
  int? unitAboveTarget,
  int? currentBG,
  double bgUnit,
) {
  if (currentBG == null || targetBG == null || unitAboveTarget == null) {
    return null;
  }

  // Check if currentBG is less than or equal to targetBG
  if (currentBG <= targetBG) {
    return 0;
  }

  // Calculate insulin units
  final excessBG = currentBG - targetBG;
  final insulinUnits = (excessBG / unitAboveTarget);

  // Apply ceiling logic to round up to the nearest integer
  return insulinUnits.ceilToDouble() * bgUnit;
}

String glucoseControlMessage(int? bloodGlucose) {
  if (bloodGlucose == null) {
    return "";
  }

  if (bloodGlucose > 300) {
    return "Check ketones!";
  } else if (bloodGlucose < 70) {
    return "Treat low";
  } else {
    return "Glucose within range";
  }
}

double? totalInsulinUnits(
  double? carbUnits,
  double? bGUnits,
) {
  // add up both unit variables
  if (carbUnits == null) {
    carbUnits = 0;
  }
  if (bGUnits == null) {
    bGUnits = 0;
  }
  return carbUnits + bGUnits;
}

DateTime? parsedDateTime(DateTime? parsedDate) {
  //  write a custom function to convert string to datetime,
  if (parsedDate == null) {
    return null;
  }
  final dateFormat = DateFormat('yyyy-MM-dd');
  final dateString = dateFormat.format(parsedDate);
  return DateTime.parse(dateString);
}

String glucoseBedtimeCM(
  int? bloodGlucose,
  int? targetBedtimeBG,
) {
  if (bloodGlucose == null || targetBedtimeBG == null) {
    return "";
  }

  if (bloodGlucose > targetBedtimeBG) {
    return "Correct Glucose!";
  } else {
    return "No Correction Needed";
  }
}

List<String>? uniqueSortedDates(List<DateTime>? inputList) {
  // Null safety
  if (inputList == null) {
    return null;
  }

  // Normalize dates to remove the time component
  final normalizedDates = inputList
      .map((date) => DateTime(date.year, date.month, date.day))
      .toList();

  // Create a Set from the input list to remove duplicates
  Set<DateTime> uniqueSet = Set<DateTime>.from(normalizedDates);

  // Convert the Set back to a List
  List<DateTime> uniqueList = uniqueSet.toList();

  // Sort the list in descending order
  uniqueList.sort((a, b) => b.compareTo(a));

  // Only take 5 dates
  List<DateTime> firstFiveDates = uniqueList.take(5).toList();

  // Function to format DateTime to String without time component
  String formatDateWithoutTime(DateTime date) {
    final DateFormat formatter = DateFormat('MM-dd-yyyy');
    return formatter.format(date);
  }

  // Convert the final list of DateTime objects to formatted strings
  List<String> formattedDates =
      firstFiveDates.map(formatDateWithoutTime).toList();

  return formattedDates;
}

List<String>? sortMealTypeInfo(List<String>? mealTypes) {
  // Null safety check
  if (mealTypes == null) {
    return null;
  }

  // Define the custom order
  final customOrder = {
    'breakfast': 0,
    'lunch': 1,
    'dinner': 2,
    'before_bed': 3,
  };

  // Sort the meal types based on the custom order
  mealTypes.sort((a, b) => customOrder[a]!.compareTo(customOrder[b]!));

  return mealTypes;
}

String? dateFormatChange(DateTime? supabaseDate) {
  // Check if the input date is null
  if (supabaseDate == null) return null;

  // Define the formatter
  final formatter = DateFormat('MM-dd-yyyy');

  // Format the date
  final formattedDate = formatter.format(supabaseDate);

  // Return the formatted date
  return formattedDate;
}

DateTime weekDateReturn(DateTime? date) {
  // get the date of a week in the past based on todays date input
  final weekAgo = date?.subtract(Duration(days: 7));
  return weekAgo ?? DateTime.now();
}

DateTime twoWeekDateReturn(DateTime? date) {
  // get the date of a week in the past based on todays date input
  final weekAgo = date?.subtract(Duration(days: 14));
  return weekAgo ?? DateTime.now();
}

List<String>? mealtypeListReturn(String mealtype) {
  // if mealtype is "All", return "one", "two, "three".
  if (mealtype == "All") {
    return ["breakfast", "lunch", "dinner", "before bed"];
  } else if (mealtype == 'breakfast') {
    return ["breakfast"];
  } else if (mealtype == 'lunch') {
    return ["lunch"];
  } else if (mealtype == "dinner") {
    return ["dinner"];
  } else if (mealtype == "before bed") {
    return ["before bed"];
  } else {
    return [];
  }
}

double? bedtimeCorrectionInsulinUnitsToTake(
  int? targetBedtimeBG,
  double? currentBedtimeBG,
  double? unitATarget,
  double? bgUnit,
  int? targetBG,
) {
  if (currentBedtimeBG == null ||
      targetBedtimeBG == null ||
      unitATarget == null ||
      bgUnit == null ||
      targetBG == null) {
    return null;
  }

  // Calculate insulin units
  if (currentBedtimeBG <= targetBedtimeBG) {
    return 0;
  }

  final excessBG = currentBedtimeBG - targetBG;
  final insulinUnits = (excessBG / unitATarget) * bgUnit;

  // Return the calculated insulin units
  return (insulinUnits.ceilToDouble() / 2);
}
