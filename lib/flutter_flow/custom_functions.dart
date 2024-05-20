import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

GrokPlantDataStruct parseApiResponse(String apiResponse) {
  try {
    // Decode the main JSON response
    final responseMap = jsonDecode(apiResponse);

    // Ensure the response contains the 'choices' field and it is not empty
    if (responseMap.containsKey('choices') &&
        responseMap['choices'].isNotEmpty) {
      // Extract the 'content' field from the first choice
      final contentString = responseMap['choices'][0]['message']['content'];

      // Decode the content string into a map
      final contentMap = jsonDecode(contentString);

      // Extract relevant fields
      final plantDescription = contentMap['plant_description'];
      final controlRecommendations = List<String>.from(
          contentMap['control_recommendations']
              .map((item) => item['recommendation']));

      // Return an instance of GrokPlantDataStruct
      return GrokPlantDataStruct(
        plantDescription: plantDescription,
        controlRecommendations: controlRecommendations,
      );
    } else {
      throw FormatException(
          'Invalid API response format: missing "choices" field or it is empty.');
    }
  } catch (e) {
    throw FormatException('Failed to parse API response: $e');
  }
}
