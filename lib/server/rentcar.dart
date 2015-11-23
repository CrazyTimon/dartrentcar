library dartrentcar.server.rentcar;

import 'dart:io';

import 'package:rpc/rpc.dart';
import 'dart:async';
import 'package:dartrentcar/client/dal/api_response.dart';

@ApiClass(version: 'v1')
class RentCar {

  RentCar();

  @ApiMethod(path: 'noop')
  VoidMessage noop() { return null; }

  @ApiMethod(path: 'hello/{name}/age/{age}')
  RentCarResponse helloNameAge(String name, int age) {
    return new RentCarResponse()..result = 'Hello ${name} of age ${age}!';
  }
}
