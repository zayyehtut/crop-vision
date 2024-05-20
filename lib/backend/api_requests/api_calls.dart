import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GroqAIChatCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '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',
    dynamic promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "mixtral-8x7b-32768",
  "messages": $prompt
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Groq AI Chat',
      apiUrl: 'https://api.groq.com/openai/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? createdTimestamp(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  static String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class GroqAIDataCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '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',
    dynamic promptJson,
    String? plant = '',
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "mixtral-8x7b-32768",
  "messages": [
    {
      "role": "system",
      "content": "You are a plant database that outputs plant information in JSON. The JSON object must use the following schema: const schema = { \$defs: { ControlRecommendation: { properties: { recommendation: { title: 'Recommendation', type: 'string' } }, required: ['recommendation'], title: 'ControlRecommendation', type: 'object' }, PlantDescription: { properties: { description: { title: 'Description', type: 'string' } }, required: ['description'], title: 'PlantDescription', type: 'object' } }, properties: { plant_name: { title: 'Plant Name', type: 'string' }, plant_description: { \$ref: '#/\$defs/PlantDescription' }, control_recommendations: { items: { \$ref: '#/\$defs/ControlRecommendation' }, title: 'Control Recommendations', type: 'array' } }, required: [ 'plant_name', 'plant_description', 'control_recommendations' ], title: 'PlantInfo', type: 'object' };"
    },
    {
      "role": "user",
      "content": "Fetch information for $plant."
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Groq AI Data',
      apiUrl: 'https://api.groq.com/openai/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? createdTimestamp(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  static String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[0].message.content''',
      ));
}

class IdentifyCall {
  static Future<ApiCallResponse> call({
    String? image = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'identify',
      apiUrl: 'https://hntxn7.buildship.run/identify',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'image': image,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? organ(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.organ''',
      ));
  static List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? orgImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.orgImage''',
      ));
  static String? chemControl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.chemControl''',
      ));
  static String? natControl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.natControl''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? comName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.comName''',
      ));
  static String? sciName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sciName''',
      ));
  static double? predictionScore(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.predictionScore''',
      ));
}

class ChatCall {
  static Future<ApiCallResponse> call({
    dynamic promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);

    return ApiManager.instance.makeApiCall(
      callName: 'chat',
      apiUrl: 'https://hntxn7.buildship.run/chat',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'prompt': prompt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? createdTimestamp(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  static String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
