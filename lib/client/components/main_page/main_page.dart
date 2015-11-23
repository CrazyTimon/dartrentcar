@HtmlImport('main_page.html')
library dartrentcar.components.main_page;

import 'package:polymer/polymer.dart';
import 'package:paper_elements/paper_input.dart';
import 'package:paper_elements/paper_button.dart';
import 'package:dartrentcar/client/dal/api.dart';
import 'dart:async';


@CustomTag('main-page')
class MainPage extends PolymerElement {
  MainPage.created() : super.created();

  @observable String testquery = 'api/toyapi/v1/hero/asd/false';

  RentCarApi _api = new RentCarApi();

  void sendRequest(){
    _api.get(testquery).then(_callback);
  }

  void _callback(json){
    print(json);
  }
}