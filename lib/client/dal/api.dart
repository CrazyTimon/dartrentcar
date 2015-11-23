library dartrentcar.dal.api;

import 'dart:async';
import 'dart:html';

class RentCarApi{
  RentCarApi();
  static const serverUrl = 'localhost';
  static const serverPort = '8080';

  Future get(path)=>HttpRequest.getString('${serverUrl}:${serverPort}/${path}');
}