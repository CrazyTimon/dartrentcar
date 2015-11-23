// This is a generated file (see the discoveryapis_generator project).

library dartrentcar.rentCar.client;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;
import 'package:dartrentcar/client/dal/api_response.dart';
export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client rentCar/v1';

class RentCar {

  final commons.ApiRequester _requester;

  RentCar(http.Client client, {core.String rootUrl: "http://localhost:8080/", core.String servicePath: "rentCar/v1/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /**
   * Request parameters:
   *
   * [name] - Path parameter: 'name'.
   *
   * [age] - Path parameter: 'age'.
   *
   * Completes with a [RentCarResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RentCarResponse> helloNameAge(core.String name, core.int age) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (age == null) {
      throw new core.ArgumentError("Parameter age is required.");
    }

    _url = 'hello/' + commons.Escaper.ecapeVariable('$name') + '/age/' + commons.Escaper.ecapeVariable('$age');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => RentCarResponseFactory.fromJson(data));
  }

  /**
   * Request parameters:
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future noop() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;


    _downloadOptions = null;

    _url = 'noop';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}



class RentCarResponseFactory {
  static RentCarResponse fromJson(core.Map _json) {
    var message = new RentCarResponse();
    if (_json.containsKey("result")) {
      message.result = _json["result"];
    }
    return message;
  }

  static core.Map toJson(RentCarResponse message) {
    var _json = new core.Map();
    if (message.result != null) {
      _json["result"] = message.result;
    }
    return _json;
  }
}

