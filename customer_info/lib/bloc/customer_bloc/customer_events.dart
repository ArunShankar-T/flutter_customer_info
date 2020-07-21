import 'package:equatable/equatable.dart';

abstract class CustomerEvent extends Equatable{}

class FetchCustomerDataEvent extends CustomerEvent {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
