import 'dart:convert';

import 'package:customerinfo/model/control_panel_model.dart';
import 'package:customerinfo/model/customer_data_holder.dart';
import 'package:customerinfo/model/customer_info_model.dart';
import 'package:http/http.dart' as http;

abstract class CustomerRepository {
  Future<CustomerDataHolder> fetchAllDetails();

  Future<CustomerInfoModel> getCustomerDetailsList();

  Future<ControlPanelModel> getControlPanelList();
}

class CustomerRepositoryImpl implements CustomerRepository {

  CustomerRepositoryImpl();

  String _controlPanelUrl =
      "https://routepro.cloud/demo/bo/api/index/getsyncdata/routeid/1101/userid/15/deviceid/36f238d651dfeaa1/mdate/0/table/1";
  String _customerInfoPanelUrl =
      "https://routepro.cloud/demo/bo/api/index/getsyncdata/routeid/1101/userid/15/deviceid/36f238d651dfeaa1/mdate/0/table/4";

  @override
  Future<CustomerDataHolder> fetchAllDetails() async {
    CustomerDataHolder customerDataHolder = CustomerDataHolder(
        await getControlPanelList(), await getCustomerDetailsList());
    return customerDataHolder;
  }

  @override
  Future<ControlPanelModel> getControlPanelList() async {
    var response = await http.get(_controlPanelUrl);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      ControlPanelModel controlPanel = ControlPanelModel.fromJson(data);
      return controlPanel;
    } else {
      throw Exception();
    }
  }

  @override
  Future<CustomerInfoModel> getCustomerDetailsList() async {
    var response = await http.get(_customerInfoPanelUrl);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      CustomerInfoModel customerInfo = CustomerInfoModel.fromJson(data);
      return customerInfo;
    } else {
      throw Exception();
    }
  }

}
