import 'package:status_check_mobile/presentation/service_list_screen/controller/service_list_controller.dart';
import 'package:status_check_mobile/presentation/service_list_screen/models/service_list_item_model.dart';
import '../../../core/constants/url.dart';
import '/core/app_export.dart';
import 'package:status_check_mobile/presentation/service_status_screen/models/service_status_model.dart';
import 'package:status_check_mobile/presentation/service_list_screen/models/service_list_model.dart';
import 'package:flutter/material.dart';
import 'package:status_check_mobile/data/models/statusJson/get_status_json_resp.dart';
import 'package:status_check_mobile/data/apiClient/api_client.dart';

class ServiceStatusController extends GetxController {
  Rx<ServiceStatusModel> categoryEModelObj = ServiceStatusModel().obs;
  Rx<ServiceListModel> categoryCModelObj = ServiceListModel().obs;

  GetStatusJsonResp getStatusJsonResp = GetStatusJsonResp();
  String postBAasAItLazrUlP2GZvhmDlSVResp = "";
  @override
  void onReady() {
    List<ServiceListItemModel> list = Get.arguments['list'];
    categoryEModelObj.value.categoryItemList.value = list;
    categoryEModelObj.value.categoryItemList.value.forEach((element) {
      this.callFetchStatusJson(
        element,
        successCall: _onFetchStatusJsonSuccess,
        errCall: _onFetchStatusJsonError,
      );
    });

    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchStatusJson(ServiceListItemModel element,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    Url url = new Url();

    return Get.find<ApiClient>().fetchStatusJson(
        url.get(element.Name.toLowerCase()), onSuccess: (resp) {
      onFetchStatusJsonSuccess(element, resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchStatusJsonError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchStatusJsonSuccess(ServiceListItemModel element, var response) {
    element.Status.value = false;
    element.Message.value = "No Response";
    if (element.Name.value == "Clickup") {
      if (response
          .toString()
          .contains("100% Online - All systems operational")) {
        getStatusJsonResp?.status?.description = "All Systems Operational";
      }
    } else if (element.Name.value == "Slack") {
      if (response['status'].toString() == "ok") {
        getStatusJsonResp?.status?.description = "All Systems Operational";
      }
    } else if (element.Name.value == "Amazon") {
      if (response.toString() == "[]") {
        getStatusJsonResp?.status?.description = "All Systems Operational";
      }
    } else if (element.Name.value == "Keka") {
      if (response.toString().contains("All services are online")) {
        getStatusJsonResp?.status?.description = "All Systems Operational";
      }
    } else if (element.Name.value == "Canny") {
      if (response.toString().contains("All services are online")) {
        getStatusJsonResp?.status?.description = "All Systems Operational";
      }
    } else if (element.Name.value == "Hoppscotch") {
      if (response.toString().contains("All services are online")) {
        getStatusJsonResp?.status?.description = "All Systems Operational";
      }
    } else if (element.Name.value == "Gitlab") {
      if (response.toString().contains("All services are online")) {
        getStatusJsonResp?.status?.description = "All Systems Operational";
      }
    } else {
      getStatusJsonResp = GetStatusJsonResp.fromJson(response);
    }
    if (getStatusJsonResp.status?.description != "") {
      element.Status.value = true;
      element.Message.value = "All Systems Operational";
    } else {
      this.callCreateBAasAItLazrUlP2GZvhmDlSV(
        {"text": element.Name.value + " Is Down !"},
        successCall: _onCreateBAasAItLazrUlP2GZvhmDlSVSuccess,
        errCall: _onCreateBAasAItLazrUlP2GZvhmDlSVError,
      );
    }
  }

  void onFetchStatusJsonError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchStatusJsonSuccess() {}
  void _onFetchStatusJsonError() {}

  void callCreateBAasAItLazrUlP2GZvhmDlSV(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createBAasAItLazrUlP2GZvhmDlSV(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateBAasAItLazrUlP2GZvhmDlSVSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateBAasAItLazrUlP2GZvhmDlSVError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateBAasAItLazrUlP2GZvhmDlSVSuccess(var response) {
    postBAasAItLazrUlP2GZvhmDlSVResp = response;
  }

  void onCreateBAasAItLazrUlP2GZvhmDlSVError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onCreateBAasAItLazrUlP2GZvhmDlSVSuccess() {}
  void _onCreateBAasAItLazrUlP2GZvhmDlSVError() {}
}
