part of 'bills_cubit.dart';

@immutable
abstract class BillsState {}

class BillsInitial extends BillsState {}
 ///Get All Bills
class GetAllBillsLoadingState extends BillsState {}

class GetAllBillsSuccessState extends BillsState {}

class GetAllBillsErrorState extends BillsState {}
/// Add Bill
class AddBillLoadingState extends BillsState {}

class AddBillSuccessState extends BillsState {}

class AddBillErrorState extends BillsState {}