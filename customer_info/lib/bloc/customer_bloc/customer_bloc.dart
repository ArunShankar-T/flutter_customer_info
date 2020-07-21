import 'package:customerinfo/bloc/customer_bloc/block_state.dart';
import 'package:customerinfo/bloc/customer_bloc/customer_events.dart';
import 'package:customerinfo/model/customer_data_holder.dart';
import 'package:customerinfo/repository/customer_info_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerInfoState> {
  CustomerRepository repository;

  CustomerBloc(this.repository) : super(null);

  @override
  // TODO: implement initialState
  CustomerInfoState get initialState => CustomerInitialState();

  @override
  Stream<CustomerInfoState> mapEventToState(CustomerEvent event) async* {
    if (event is FetchCustomerDataEvent) {
      yield CustomerLoadingState();
      try {
        CustomerDataHolder customerDataHolder =
            await repository.fetchAllDetails();
        if (customerDataHolder != null &&
            (customerDataHolder.customerDetailList != null)) {
          yield CustomerLoadedState(customerDataHolder: customerDataHolder);
        } else {
          yield CustomerErrorState(message: "Error");
        }
      } catch (e) {
        yield CustomerErrorState(message: e.toString());
      }
    }
  }
}
