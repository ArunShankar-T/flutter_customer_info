import 'package:customerinfo/model/customer_data_holder.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class CustomerInfoState extends Equatable {}

class CustomerInitialState extends CustomerInfoState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class CustomerLoadingState extends CustomerInfoState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class CustomerLoadedState extends CustomerInfoState {
  CustomerDataHolder customerDataHolder;

  CustomerLoadedState({@required this.customerDataHolder});

  @override
  // TODO: implement props
  List<Object> get props => [customerDataHolder];
}

class CustomerErrorState extends CustomerInfoState {
  String message;

  CustomerErrorState({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
