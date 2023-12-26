import 'package:afk_task/Const/api_url.dart';
import 'package:afk_task/Const/constants.dart';
import 'package:afk_task/Model/getBills_model.dart';
import 'package:afk_task/helper/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bills_state.dart';

class BillsCubit extends Cubit<BillsState> {
  BillsCubit() : super(BillsInitial());

  static BillsCubit get(context) => BlocProvider.of(context);
  GetBillsModel? getBillsModel;
  var storeNameController = TextEditingController();
  var companynamController = TextEditingController();

  List<String> customerNames = [];
  List<String> paymentType = [];
  List<CustomerList> customerList = [];
  String customername = 'Cash';
  String payment="شيك";

  void getAllBills({
    Function()? onError,
    Function()? onSuccess,
  }) async {
    emit(GetAllBillsLoadingState());
    DioHelper.postData(
            url: ApiUrl.getAllBills, data: {"invoiceType": 10}, token: token)
        .then((value) {
      if (value.statusCode == 200) {
        getBillsModel = GetBillsModel.fromJson(value.data);

        storeNameController.text = getBillsModel!.data[0].defaultStoreName;

        companynamController.text =
            getBillsModel!.data[0].companyInfoList[0].companyName;

        for (int i = 0; i < getBillsModel!.data[0].customerList.length; i++) {
          customerNames
              .add(getBillsModel!.data[0].customerList[i].customerName);
        }
        for (int i = 0;
            i < getBillsModel!.data[0].paymentTypeList.length;
            i++) {
          paymentType
              .add(getBillsModel!.data[0].paymentTypeList[i].paymentTypeName);
        }
        for (int i = 0;
            i < getBillsModel!.data[0].companyInfoList.length;
            i++) {
          paymentType
              .add(getBillsModel!.data[0].companyInfoList[i].companyName);
        }
        print(customerNames);
        onSuccess!();
      } else {
        onError!();
      }
      emit(GetAllBillsSuccessState());
    }).catchError((onError) {
      emit(GetAllBillsErrorState());
      print(onError.toString());
    });
  }

  void addBill({
    Function()? onError,
    Function()? onSuccess,
  }) async {
    emit(AddBillLoadingState());
    DioHelper.postData(url: ApiUrl.addBill,
        data: {
          "pintAfterSave": 0,
          "companyId": 0,
          "branchId": 0,
          "invoiceType": 10,
          "fyId": 0,
          "invoiceId": 0,
          "invoiceCode": "string",
          "headerStoreText": "string",
          "invoiceDate": "2023-12-26T11:46:21.396Z",
          "invoiceDateHJ": "string",
          "status": 0,
          "description": "string",
          "sceId": 1,
          "sceIdText": "string",
          "currencyId":1,
          "currencyIdText": "string",
          "rate": 1,
          "jvId": 0,
          "delegateId": 0,
          "delegateIdText": "string",
          "total": 100,
          "itemsDiscount": 0,
          "additionalDiscount": 0,
          "totalDiscount": 0,
          "netTotal": 100,
          "amountPaid": 50,
          "remainingAmount": 50,
          "totalPayment": 50,
          "storeId": 0,
          "policyId": 1,
          "source": 0,
          "sourceId": 0,
          "type": 1,
          "typeText": "string",
          "gTotalExpenses": 0,
          "expenses": 0,
          "chargeFees": 0,
          "paperFees": 0,
          "dwonloadFees": 0,
          "customsRepresentativeFees": 0,
          "agriFees": 0,
          "salesTotal": 0,
          "dispatchTotal": 0,
          "commision": 0,
          "commisionPer": 0,
          "dispatchNet": 0,
          "invoiceType1": 10,
          "invoiceId1": 0,
          "sourceBranchId": 0,
          "taxRate": 0,
          "taxValue": 0,
          "taxSalesValue": 0,
          "cashTendered": 0,
          "ptId": 1,
          "fromDate": "2023-12-26T11:46:21.396Z",
          "fromDateHJ": "string",
          "toDate": "2023-12-26T11:46:21.396Z",
          "toDateHJ": "string",
          "ipType": 0,
          "mainCustomerId": 0,
          "fiDate": "2023-12-26T11:46:21.396Z",
          "fiDateHJ": "string",
          "installmentMonths": 0,
          "installmentValue": 0,
          "guaranteeDate": "2023-12-26T11:46:21.396Z",
          "guaranteeDateHJ": "string",
          "supCustInvNo": "string",
          "guarantee": true,
          "additionalDiscountPercent": 0,
          "tableNumber": 0,
          "posInvoiceTypeId": 0,
          "userIdAdded": 0,
          "sponsorsId1": 0,
          "sponsorsId2": 0,
          "sponsorsIdAgent": 0,
          "repaymentDeadlineDate": "2023-12-26T11:46:21.396Z",
          "repaymentDeadlineDateHJ": "string",
          "printWithInvoice": true,
          "repaymentDeadline": true,
          "orderNoCounter": 0,
          "salesPrice": 0,
          "lastCouponsNo": 0,
          "firstCouponsNo": 0,
          "couponsCount": 0,
          "litersCount": 0,
          "couponsTypeId": 0,
          "guaranteeTaxValue": 0,
          "tableTaxValue": 0,
          "developmentFees": 0,
          "guaranteeAmount": 0,
          "addedTaxRate": 0,
          "addedTaxValue": 0,
          "costOfSales": "string",
          "cosCostCenter": "string",
          "totalCash": 0,
          "totalCredit": 0,
          "commission": 0,
          "commissionPercent": 0,
          "fNumber": 0,
          "totalNumber": 0,
          "rent": 0,
          "totalRent": 0,
          "cardboard": 0,
          "download": 0,
          "supplierLoan": 0,
          "driverId": 0,
          "containersNo": "string",
          "truckNo": "string",
          "countryId": 0,
          "deliveryDate": "2023-12-26T11:46:21.396Z",
          "deliveryDateHJ": "string",
          "approximationV": 0,
          "hidePAlarm": true,
          "autoId": 0,
          "autoCounter": "string",
          "periodec": true,
          "beginDate": "2023-12-26T11:46:21.396Z",
          "beginDateHJ": "string",
          "endDate": "2023-12-26T11:46:21.396Z",
          "endDateHJ": "string",
          "cDays": 0,
          "printCount": 0,
          "cultivationDate": "2023-12-26T11:46:21.396Z",
          "cultivationDateHJ": "string",
          "rsdNotificationID": "string",
          "fromGLN": "string",
          "sendNotificationDate": "2023-12-26T11:46:21.396Z",
          "points": 0,
          "jvSerial": "string",
          "sourceInvoiceCode": "string",
          "lengthPR": 0,
          "width": 0,
          "height": 0,
          "gofferRateB": 0,
          "gofferRateC": 0,
          "gofferId": 0,
          "layerId": 0,
          "itemId": 1,
          "quantity": 0,
          "welding": 0,
          "sheetWidth": 0,
          "damage": 0,
          "invoiceItems": [
            {
              "companyId": 0,
              "branchId": 0,
              "invoiceType": 0,
              "fyId": 0,
              "invoiceId": 0,
              "id": 0,
              "itemId": 0,
              "itemIdName": "string",
              "itemCode": "string",
              "unitId": 0,
              "unitIdName": "string",
              "quantity": 1,
              "cost": 0,
              "price": 1,
              "total": 1,
              "additionalCost": 0,
              "freeQuantity": 0,
              "discount1": 0,
              "discountPercent1": 0,
              "totalAfterDiscount1": 1,
              "discount2": 0,
              "discountPercent2": 0,
              "totalAfterDiscount2":1,
              "discount3": 0,
              "discountPercent3": 0,
              "totalAfterDiscount3": 1,
              "netPrice": 1,
              "description": "Test Invoice",
              "storeId": 0,
              "storeIdName": "string",
              "sectionId": 1,
              "colorId": 0,
              "sortId": 0,
              "productionDate": "2023-12-26T11:46:21.397Z",
              "expiryDate": "2023-12-26T11:46:21.397Z",
              "serial": "string",
              "source": 0,
              "sourceId": 0,
              "sourceDtlId": 0,
              "invoiceType1": 0,
              "invoiceId1": 0,
              "id1": 0,
              "totalQuantity": 0,
              "gExpensesLoaded": 0,
              "gExpensesNotLoaded": 0,
              "pExpensesLoaded": 0,
              "pExpensesNotLoaded": 0,
              "additionalDiscount": 0,
              "taxRate": 0,
              "taxValue": 0,
              "cubic": 0,
              "hidePrice": true,
              "height": 0,
              "width": 0,
              "heaving": 0,
              "iCount": 0,
              "dayUse": "string",
              "todayDoses": "string",
              "dayUseId": 0,
              "todayDosesId": 0,
              "salesManId": 0,
              "model": "string",
              "bodyNo": "string",
              "boardNo": "string",
              "motorNo": "string",
              "jobNo": "string",
              "guaranteePercent": 0,
              "guaranteeValue": 0,
              "guaranteeTaxPercent": 0,
              "guaranteeTaxValue": 0,
              "developmentFees": 0,
              "supplierId": 0,
              "customerId": 0,
              "publicPrice": 0,
              "taxValueBefore": 0,
              "tableTaxPercent": 0,
              "tableTaxValue": 0,
              "psoInvoiceId": 0,
              "psoId": 0,
              "guaranteeDate": "2023-12-26T11:46:21.397Z",
              "itemBalance": 0,
              "consumption1month": 0,
              "consumption2month": 0,
              "consumption3month": 0,
              "consumptionFull": 0,
              "pSalesPrice": 0,
              "pmSalesPrice": 0,
              "invoiceId2": 0,
              "id2": 0,
              "idDTL": 0,
              "invoiceType2": 0,
              "issuingInvoiceId": 0,
              "costCenterId": "string",
              "sourceTaxRate": 0,
              "sourceTaxValue": 0,
              "points": 0
            }
          ],
          "invoicePayments": [
            {
              "companyId": 0,
              "branchId": 0,
              "invoiceType": 0,
              "fyId": 0,
              "invoiceId": 0,
              "paymentId": 0,
              "paymentType": 0,
              "paymentValue": 0,
              "dueDate": "2023-12-26T11:46:21.397Z",
              "dueDateHJ": "string",
              "accountId": "string",
              "docNo": "string",
              "bankId": 0,
              "recipientId": 0,
              "invoiceType1": 0,
              "invoiceId1": 0,
              "paymentId1": 0,
              "issuingInvoiceId": 0,
              "accountName": "string",
              "paymentTypeName": payment
            }
          ],
          "invoicePrivateExpenses": [
            {
              "companyId": 0,
              "branchId": 0,
              "invoiceType": 0,
              "fyId": 0,
              "invoiceId": 0,
              "id": 0,
              "jvType": 0,
              "ftfyId": 0,
              "ftId": 0,
              "serial": 0,
              "csLoaded": true,
              "currencyId": 1,
              "xRate": 0,
              "expenseSource": 0,
              "totalAmount": 0,
              "accountId": "string",
              "ftDate": "2023-12-26T11:46:21.397Z",
              "ftDateHJ": "string",
              "ftSerial": "string",
              "description": "string"
            }
          ],
          "invoiceTotalExpenses": [
            {
              "companyId": 0,
              "branchId": 0,
              "invoiceType": 0,
              "fyId": 0,
              "invoiceId": 0,
              "id": 0,
              "jvType": 0,
              "ftfyId": 0,
              "ftId": 0,
              "serial": 0,
              "csLoaded": true,
              "currencyId": 0,
              "xRate": 0,
              "expenseSource": 0,
              "totalAmount": 0,
              "accountId": "string",
              "ftDate": "2023-12-26T11:46:21.397Z",
              "ftDateHJ": "string",
              "ftSerial": "string",
              "description": "string"
            }
          ],
          "assembled": [
            {
              "itemId": 0,
              "itemName": "string",
              "unitId": 0,
              "quantity": 0,
              "price": 0,
              "total": 0,
              "description": "string",
              "cost": 0,
              "storeId": 1,
              "sectionId": 0,
              "colorId": 0,
              "sortId": 0,
              "productionDate": "2023-12-26T11:46:21.397Z",
              "expiryDate": "2023-12-26T11:46:21.397Z",
              "invoiceType1": 0,
              "invoiceId1": 0,
              "id1": 0,
              "serial": "string",
              "jobNo": "string",
              "model": "string",
              "bodyNo": "string",
              "boardNo": "string",
              "rInvoiceId": 0
            }
          ],
          "paymentsBDue": [
            {
              "invoiceType1": 0,
              "invoiceType": 0,
              "invoiceId1": 0,
              "invoiceId": 0,
              "issuingInvoiceId": 0,
              "paymentId1": 0,
              "paymentId": 0,
              "sceIdBDue": 0,
              "currencyIdBDue": 0,
              "paymentValueII": 0,
              "taxRate": 0,
              "checked": true
            }
          ],
          "prDetails": [
            {
              "layerId": 1,
              "itemId": 0,
              "density": 0,
              "size": 0,
              "gofferRate": 0,
              "weight": 0,
              "weights": 0,
              "price": 0,
              "total": 0
            }
          ],
          "financialTransactionsDetails": [
            {
              "accountId": "string",
              "accountName": "string",
              "rate": 1,
              "amount": 0,
              "amountLocal": 0,
              "currencyId": 0,
              "description": "string",
              "costCenterId": "string",
              "id1": 0,
              "invoiceType1": 0,
              "invoiceId1": 0
            }
          ],
          "isDesktopApp": 0
        }
    , token: token)
        .then((value) {
      print(value.data);
      if (value.statusCode == 200) {
        onSuccess!();
      } else {
        print("Add Bill Error!");
        onError!();
      }
      emit(AddBillSuccessState());
    }).catchError((e) {
      emit(AddBillErrorState());
      print(e.toString());
    });
  }
}
