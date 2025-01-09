
// ignore_for_file: unused_field

import 'package:get/get.dart';
import 'package:task_app/repository/home_repository/hone_repository.dart';

import '../../../data/response/status.dart';


class HomeController extends GetxController {

  final _api = HomeRepository();


  final rxRequestStatus = Status.LOADING.obs ;
 
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value ;
  
  void setError(String value) => error.value = value ;



  
}