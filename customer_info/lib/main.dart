import 'package:customerinfo/bloc/customer_bloc/customer_bloc.dart';
import 'package:customerinfo/repository/customer_info_repo.dart';
import 'package:customerinfo/ui/customer_list_page.dart';
import 'package:customerinfo/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.APP_TITLE,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: BlocProvider<CustomerBloc>.value(
            value: CustomerBloc(CustomerRepositoryImpl()),
            child: CustomerListPage(title: AppStrings.CUSTOMER_INFO_TITLE)));
  }
}
