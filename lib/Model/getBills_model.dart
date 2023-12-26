class GetBillsModel {
  GetBillsModel({
    required this.data,
    required this.status,
    required this.message,
    required this.endUserMessage,
    required this.isSuccess,
  });
  late final List<Data> data;
  late final dynamic status;
  late final String message;
  late final String endUserMessage;
  late final bool isSuccess;

  GetBillsModel.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
    status = json['status'];
    message = json['message'];
    endUserMessage = json['endUserMessage'];
    isSuccess = json['isSuccess'];
  }

}

class Data {
  Data({
    required this.defaultStoreId,
    required this.defaultStoreName,
    required this.defaultCurrencyId,
    required this.defaultCurrencyName,
    required this.paymentTypeList,
    required this.itemsList,
    required this.customerList,
    required this.salesmen,
    required this.currencyList,
    required this.accountsList,
    required this.storesList,
    required this.companyList,
    required this.companyInfoList,
    required this.warrantyList,
    required this.invoiceSourceList,
    required this.invoicePolicyList,
  });
  late final dynamic defaultStoreId;
  late final String defaultStoreName;
  late final dynamic defaultCurrencyId;
  late final String defaultCurrencyName;
  late final List<PaymentTypeList> paymentTypeList;
  late final List<ItemsList> itemsList;
  late final List<CustomerList> customerList;
  late final List<Salesmen> salesmen;
  late final List<CurrencyList> currencyList;
  late final List<AccountsList> accountsList;
  late final List<StoresList> storesList;
  late final List<dynamic> companyList;
  late final List<CompanyInfoList> companyInfoList;
  late final List<dynamic> warrantyList;
  late final List<InvoiceSourceList> invoiceSourceList;
  late final List<InvoicePolicyList> invoicePolicyList;

  Data.fromJson(Map<String, dynamic> json){
    defaultStoreId = json['defaultStoreId'];
    defaultStoreName = json['defaultStoreName'];
    defaultCurrencyId = json['defaultCurrencyId'];
    defaultCurrencyName = json['defaultCurrencyName'];
    paymentTypeList = List.from(json['paymentTypeList']).map((e)=>PaymentTypeList.fromJson(e)).toList();
    itemsList = List.from(json['itemsList']).map((e)=>ItemsList.fromJson(e)).toList();
    customerList = List.from(json['customerList']).map((e)=>CustomerList.fromJson(e)).toList();
   salesmen = List.from(json['salesmen']).map((e)=>Salesmen.fromJson(e)).toList();
   currencyList = List.from(json['currencyList']).map((e)=>CurrencyList.fromJson(e)).toList();
   accountsList = List.from(json['accountsList']).map((e)=>AccountsList.fromJson(e)).toList();
   storesList = List.from(json['storesList']).map((e)=>StoresList.fromJson(e)).toList();
    companyList = List.castFrom<dynamic, dynamic>(json['companyList']);
   companyInfoList = List.from(json['companyInfoList']).map((e)=>CompanyInfoList.fromJson(e)).toList();
    warrantyList = List.castFrom<dynamic, dynamic>(json['warrantyList']);
   invoiceSourceList = List.from(json['invoiceSourceList']).map((e)=>InvoiceSourceList.fromJson(e)).toList();
   invoicePolicyList = List.from(json['invoicePolicyList']).map((e)=>InvoicePolicyList.fromJson(e)).toList();
  }

}

class PaymentTypeList {
  PaymentTypeList({
    required this.bptId,
    required this.paymentTypeName,
  });
  late final dynamic bptId;
  late final String paymentTypeName;

  PaymentTypeList.fromJson(Map<String, dynamic> json){
    bptId = json['bptId'];
    paymentTypeName = json['paymentTypeName'];
  }

}

class ItemsList {
  ItemsList({
    required this.groupId,
    required this.itemId,
    required this.itemCode,
    required this.itemName,
    required this.mainUnit,
    required this.defaultUnit,
    required this.defaultUnitSales,
    required this.unitId,
    required this.unitName,
    required this.barCode,
    required this.barcodeSeparator,
    required this.exempt,
    required this.hidePrice,
    required this.salesValue,
    required this.minimumSaleValue,
    required this.taxRate,
    required this.tableTaxRate,
    required this.salesDiscountType,
    required this.salesDiscountValue,
    required this.automaticDiscountS,
    required this.useTaxOnTableFees,
  });
  late final dynamic groupId;
  late final dynamic itemId;
  late final String itemCode;
  late final String itemName;
  late final bool mainUnit;
  late final bool defaultUnit;
  late final bool defaultUnitSales;
  late final dynamic unitId;
  late final String unitName;
  late final String barCode;
  late final String barcodeSeparator;
  late final bool exempt;
  late final bool hidePrice;
  late final dynamic salesValue;
  late final dynamic minimumSaleValue;
  late final dynamic taxRate;
  late final dynamic tableTaxRate;
  late final dynamic salesDiscountType;
  late final dynamic salesDiscountValue;
  late final bool automaticDiscountS;
  late final bool useTaxOnTableFees;

  ItemsList.fromJson(Map<String, dynamic> json){
    groupId = json['groupId'];
    itemId = json['itemId'];
    itemCode = json['itemCode'];
    itemName = json['itemName'];
    mainUnit = json['mainUnit'];
    defaultUnit = json['defaultUnit'];
    defaultUnitSales = json['defaultUnitSales'];
    unitId = json['unitId'];
    unitName = json['unitName'];
    barCode = json['barCode'];
    barcodeSeparator = json['barcodeSeparator'];
    exempt = json['exempt'];
    hidePrice = json['hidePrice'];
    salesValue = json['salesValue'];
    minimumSaleValue = json['minimumSaleValue'];
    taxRate = json['taxRate'];
    tableTaxRate = json['tableTaxRate'];
    salesDiscountType = json['salesDiscountType'];
    salesDiscountValue = json['salesDiscountValue'];
    automaticDiscountS = json['automaticDiscountS'];
    useTaxOnTableFees = json['useTaxOnTableFees'];
  }

}

class CustomerList {
  CustomerList({
    required this.id,
    required this.sceType,
    required this.code,
    required this.customerName,
    required this.tel1,
    required this.tel2,
    required this.mobile,
    required this.fax,
    required this.eMail,
    required this.site,
    required this.address,
    required this.notes,
    required this.posDefaultCusCash,
    required this.taxRegistrationNo,
    required this.vatNo,
  });
  late final dynamic id;
  late final String sceType;
  late final String code;
  late final String customerName;
  late final String tel1;
  late final String tel2;
  late final String mobile;
  late final String fax;
  late final String eMail;
  late final String site;
  late final String address;
  late final String notes;
  late final bool posDefaultCusCash;
  late final String taxRegistrationNo;
  late final String vatNo;

  CustomerList.fromJson(Map<String, dynamic> json){
    id = json['id'];
    sceType = json['sceType'];
    code = json['code'];
    customerName = json['customerName'];
    tel1 = json['tel1'];
    tel2 = json['tel2'];
    mobile = json['mobile'];
    fax = json['fax'];
    eMail = json['eMail'];
    site = json['site'];
    address = json['address'];
    notes = json['notes'];
    posDefaultCusCash = json['posDefaultCusCash'];
    taxRegistrationNo = json['taxRegistrationNo'];
    vatNo = json['vatNo'];
  }

}

class Salesmen {
  Salesmen({
    required this.id,
    required this.code,
    required this.employeeName,
  });
  late final dynamic id;
  late final String code;
  late final String employeeName;

  Salesmen.fromJson(Map<String, dynamic> json){
    id = json['id'];
    code = json['code'];
    employeeName = json['employeeName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['code'] = code;
    _data['employeeName'] = employeeName;
    return _data;
  }
}

class CurrencyList {
  CurrencyList({
    required this.currencyId,
    required this.currencyCode,
    required this.currencyName,
    required this.rate,
    required this.partName,
    required this.isLocal,
    required this.partsCount,
  });
  late final dynamic currencyId;
  late final String currencyCode;
  late final String currencyName;
  late final dynamic rate;
  late final String partName;
  late final bool isLocal;
  late final dynamic partsCount;

  CurrencyList.fromJson(Map<String, dynamic> json){
    currencyId = json['currencyId'];
    currencyCode = json['currencyCode'];
    currencyName = json['currencyName'];
    rate = json['rate'];
    partName = json['partName'];
    isLocal = json['isLocal'];
    partsCount = json['partsCount'];
  }
}

class AccountsList {
  AccountsList({
    required this.accountId,
    required this.accountName,
  });
  late final String accountId;
  late final String accountName;

  AccountsList.fromJson(Map<String, dynamic> json){
    accountId = json['accountId'];
    accountName = json['accountName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['accountId'] = accountId;
    _data['accountName'] = accountName;
    return _data;
  }
}

class StoresList {
  StoresList({
    required this.defaultStore,
    required this.storeId,
    required this.storeCode,
    required this.storeName,
  });
  late final bool defaultStore;
  late final dynamic storeId;
  late final String storeCode;
  late final String storeName;

  StoresList.fromJson(Map<String, dynamic> json){
    defaultStore = json['defaultStore'];
    storeId = json['storeId'];
    storeCode = json['storeCode'];
    storeName = json['storeName'];
  }
}

class CompanyInfoList {
  CompanyInfoList({
    required this.companyName,
    required this.taxNumber,
    required this.commercialTaxNumber,
    required this.branchName,
    required this.address,
    required this.tel1,
    required this.tel2,
    required this.mobile,
    required this.fax,
    required this.email,
    required this.site,
    required this.branchVATNo,
  });
  late final String companyName;
  late final String taxNumber;
  late final String commercialTaxNumber;
  late final String branchName;
  late final String address;
  late final String tel1;
  late final String tel2;
  late final String mobile;
  late final String fax;
  late final String email;
  late final String site;
  late final String branchVATNo;

  CompanyInfoList.fromJson(Map<String, dynamic> json){
    companyName = json['companyName'];
    taxNumber = json['taxNumber'];
    commercialTaxNumber = json['commercialTaxNumber'];
    branchName = json['branchName'];
    address = json['address'];
    tel1 = json['tel1'];
    tel2 = json['tel2'];
    mobile = json['mobile'];
    fax = json['fax'];
    email = json['email'];
    site = json['site'];
    branchVATNo = json['branchVATNo'];
  }
}

class InvoiceSourceList {
  InvoiceSourceList({
    required this.id,
    required this.code,
    required this.nameA,
    required this.nameE,
  });
  late final dynamic id;
  late final dynamic code;
  late final String nameA;
  late final String nameE;

  InvoiceSourceList.fromJson(Map<String, dynamic> json){
    id = json['id'];
    code = json['code'];
    nameA = json['nameA'];
    nameE = json['nameE'];
  }
}

class InvoicePolicyList {
  InvoicePolicyList({
    required this.id,
    required this.nameA,
    required this.nameE,
  });
  late final dynamic id;
  late final String nameA;
  late final String nameE;

  InvoicePolicyList.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nameA = json['nameA'];
    nameE = json['nameE'];
  }
}