import 'package:customerinfo/model/customer_info_model.dart';
import 'package:customerinfo/model/control_panel_model.dart';

class CustomerDataHolder {
  ControlPanelModel controlPanelList;
  CustomerInfoModel customerDetailList;

  CustomerDataHolder(this.controlPanelList, this.customerDetailList);
}
