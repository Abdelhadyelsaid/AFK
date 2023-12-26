class LoginModel {
  Data? data;
  int? status;
  String? message;
  bool? isSuccess;
  String? token;

  LoginModel(
      {this.data, this.status, this.message, this.isSuccess, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
    isSuccess = json['isSuccess'];
    token = json['token'];
  }
}

class Data {
  String? userName;
  String? loginDate;
  int? languages;
  int? userId;
  int? financialYear;
  int? type;
  int? companyId;
  int? branchId;
  bool? companyBranchShowHide;
  String? companyNameA;
  String? companyNameE;
  String? financialCode;
  String? branchNameA;
  String? branchNameE;
  String? beginDate;
  String? endDate;
  String? beginDateHJ;
  String? endDateHJ;
  int? financialType;
  int? financialStatus;
  String? strServerName;
  String? strDatabase;
  int? intSQLAuthenticationType;
  String? strSQLUserName;
  String? strSQLPassword;
  String? serverDateTime;
  int? sdpItems;
  int? sdpaDiscount;
  bool? showSalesPolicy;
  bool? joinUserStore;
  bool? manualFollowCost;
  String? strInitialCatalogOld;
  String? strDataSourceOld;
  String? strUserIDOld;
  String? strPasswordOld;
  int? authenticationTypeOld;
  int? financialYearOld;
  int? companyIdOld;
  int? programVersion;
  bool? importFromExcel;
  bool? exportToExcel;
  String? computerName;

  Data(
      {this.userName,
        this.loginDate,
        this.languages,
        this.userId,
        this.financialYear,
        this.type,
        this.companyId,
        this.branchId,
        this.companyBranchShowHide,
        this.companyNameA,
        this.companyNameE,
        this.financialCode,
        this.branchNameA,
        this.branchNameE,
        this.beginDate,
        this.endDate,
        this.beginDateHJ,
        this.endDateHJ,
        this.financialType,
        this.financialStatus,
        this.strServerName,
        this.strDatabase,
        this.intSQLAuthenticationType,
        this.strSQLUserName,
        this.strSQLPassword,
        this.serverDateTime,
        this.sdpItems,
        this.sdpaDiscount,
        this.showSalesPolicy,
        this.joinUserStore,
        this.manualFollowCost,
        this.strInitialCatalogOld,
        this.strDataSourceOld,
        this.strUserIDOld,
        this.strPasswordOld,
        this.authenticationTypeOld,
        this.financialYearOld,
        this.companyIdOld,
        this.programVersion,
        this.importFromExcel,
        this.exportToExcel,
        this.computerName});

  Data.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    loginDate = json['loginDate'];
    languages = json['languages'];
    userId = json['userId'];
    financialYear = json['financialYear'];
    type = json['type'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    companyBranchShowHide = json['companyBranchShowHide'];
    companyNameA = json['companyNameA'];
    companyNameE = json['companyNameE'];
    financialCode = json['financialCode'];
    branchNameA = json['branchNameA'];
    branchNameE = json['branchNameE'];
    beginDate = json['beginDate'];
    endDate = json['endDate'];
    beginDateHJ = json['beginDateHJ'];
    endDateHJ = json['endDateHJ'];
    financialType = json['financialType'];
    financialStatus = json['financialStatus'];
    strServerName = json['strServerName'];
    strDatabase = json['strDatabase'];
    intSQLAuthenticationType = json['intSQLAuthenticationType'];
    strSQLUserName = json['strSQLUserName'];
    strSQLPassword = json['strSQLPassword'];
    serverDateTime = json['serverDateTime'];
    sdpItems = json['sdpItems'];
    sdpaDiscount = json['sdpaDiscount'];
    showSalesPolicy = json['showSalesPolicy'];
    joinUserStore = json['joinUserStore'];
    manualFollowCost = json['manualFollowCost'];
    strInitialCatalogOld = json['strInitialCatalogOld'];
    strDataSourceOld = json['strDataSourceOld'];
    strUserIDOld = json['strUserIDOld'];
    strPasswordOld = json['strPasswordOld'];
    authenticationTypeOld = json['authenticationTypeOld'];
    financialYearOld = json['financialYearOld'];
    companyIdOld = json['companyIdOld'];
    programVersion = json['programVersion'];
    importFromExcel = json['importFromExcel'];
    exportToExcel = json['exportToExcel'];
    computerName = json['computerName'];
  }
}
