import 'package:customerinfo/bloc/customer_bloc/block_state.dart';
import 'package:customerinfo/bloc/customer_bloc/customer_bloc.dart';
import 'package:customerinfo/bloc/customer_bloc/customer_events.dart';
import 'package:customerinfo/model/customer_info_model.dart';
import 'package:customerinfo/utils/app_strings.dart';
import 'package:customerinfo/utils/size_values.dart';
import 'package:customerinfo/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerListPage extends StatefulWidget {
  CustomerListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomerListPageState createState() => _CustomerListPageState();
}

class _CustomerListPageState extends State<CustomerListPage> {
  List<CustomerMaster> customerMasterList = List();
  List<CustomerMaster> customerSearchList = List();
  bool isSearchMode = false;
  bool isLoading = false;
  CustomerBloc customerBloc;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    customerBloc = BlocProvider.of<CustomerBloc>(context);
    customerBloc.add(FetchCustomerDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Container(child: BlocBuilder<CustomerBloc, CustomerInfoState>(
          builder: (context, state) {
            Widget widget;
            if (state is CustomerLoadingState) {
              widget =
                  Container(child: Center(child: CircularProgressIndicator()));
            } else if (state is CustomerLoadedState) {
              if (state.customerDataHolder != null) {
                if (!isSearchMode) {
                  customerMasterList.addAll(state
                      .customerDataHolder.customerDetailList.customerMaster);
                  customerSearchList.addAll(customerMasterList);
                }
                widget = _buildCustomerIntoListUI(customerSearchList);
              }
            } else if (state is CustomerErrorState) {
              widget = Container(
                  child: Center(child: Text(AppStrings.CUSTOMER_INFO_ERROR)));
            }
            return widget ??= Container();
          },
        )));
  }

  Widget _buildCustomerIntoListUI(List<CustomerMaster> customerInfoList) {
    return Container(
      color: Utils.hexToColor("#e6efff"),
      child: Column(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(Dimension.NORMAL),
            child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Utils.hexToColor("#f5f5f5")),
                child: TextField(
                    onChanged: (value) {
                      isSearchMode = true;
                      filterSearchResults(value);
                    },
                    controller: searchController,
                    decoration: InputDecoration(
                        fillColor: Utils.hexToColor("#ebebeb"),
                        hintText: AppStrings.CUSTOMER_INFO_SEARCH_LABLE,
                        suffixIcon: isSearchMode
                            ? InkWell(
                                child: Icon(Icons.clear, color: Colors.black),
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  setState(() {
                                    searchController.clear();
                                    isSearchMode = false;
                                  });
                                })
                            : null,
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))))),
              ))
            ])),
        Expanded(
            child: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: customerInfoList.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildCustomerInfoItemWidget(
                    customerInfoList.elementAt(index));
              }),
        ))
      ]),
    );
  }

  Widget _buildCustomerInfoItemWidget(CustomerMaster infoItem) {
    return Card(
        margin: EdgeInsets.only(
            top: Dimension.MEDIUM,
            bottom: Dimension.MEDIUM,
            right: Dimension.LARGE,
            left: Dimension.LARGE),
        child: Row(children: <Widget>[
          Padding(
              child: Icon(Icons.person),
              padding: EdgeInsets.all(Dimension.MEDIUM)),
          Expanded(
            child: ListTile(
                dense: true,
                title: _buildTextWidget(
                    "${infoItem.customername} (${infoItem.customercode})",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                child: _buildTextWidget(
                                    infoItem.customeraddress1)),
                            _buildTextWidget(infoItem.customercity)
                          ]),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: _buildTextWidget(infoItem.customeraddress2)),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: _buildTextWidget(
                              "${AppStrings.CREDIT_LIMIT_LABLE} : ${infoItem.creditlimit}")),
                    ])),
          )
        ]));
  }

  Widget _buildTextWidget(String text, {TextStyle style}) {
    return Text(text,
        softWrap: true,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
        style: style);
  }

  buildAppBar() {
    return AppBar(title: Text(widget.title), actions: <Widget>[
      IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              isSearchMode = false;
            });
            customerBloc.add(FetchCustomerDataEvent());
          })
    ]);
  }

  void filterSearchResults(String query) {
    List<CustomerMaster> dummySearchList = List();
    dummySearchList.addAll(customerMasterList);
    if (query.isNotEmpty) {
      List<CustomerMaster> dummyListData = List();
      dummySearchList.forEach((item) {
        if (item.customername.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        customerSearchList.clear();
        customerSearchList.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        customerSearchList.clear();
        customerSearchList.addAll(customerMasterList);
      });
    }
  }
}
