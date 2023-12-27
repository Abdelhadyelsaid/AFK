import 'package:afk_task/Const/constants.dart';
import 'package:afk_task/Controller/Bills/bills_cubit.dart';
import 'package:afk_task/View/Widgets/default_button.dart';
import 'package:afk_task/View/Widgets/default_form_field.dart';
import 'package:afk_task/View/Widgets/dropmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'فاتورة مبيعات',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: BlocProvider(
          create: (context) => BillsCubit()..getAllBills(),
          child: BlocConsumer<BillsCubit, BillsState>(
            listener: (context, state) {},
            builder: (context, state) {
              BillsCubit cubit = BillsCubit.get(context);

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: cubit.getBillsModel == null
                    ? const Center(
                        child: CircularProgressIndicator(color: Colors.black))
                    : SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                defaultFormField(
                                    controller: cubit.storeNameController,
                                    type: TextInputType.text,
                                    width: .44.sw,
                                    validator: (value) {},
                                    hint: ''),
                                defaultFormField(
                                    controller: cubit.companynamController,
                                    type: TextInputType.text,
                                    width: .44.sw,
                                    validator: (value) {},
                                    hint: ''),
                              ],
                            ),
                            StatefulBuilder(
                                builder: (context, setState) => DropMenu(
                                      width: 300.w,
                                      items: cubit.customerNames,
                                      value: cubit.customername,
                                      title: 'Customers Names',
                                      onChange: (value) {
                                        setState(() {
                                          cubit.customername = value!;
                                        });
                                      },
                                    )),
                            StatefulBuilder(
                                builder: (context, setState) => DropMenu(
                                      width: 300.w,
                                      items: cubit.paymentType,
                                      value: cubit.payment,
                                      title: 'Payment Type',
                                      onChange: (value) {
                                        setState(() {
                                          cubit.payment = value!;
                                        });
                                      },
                                    )),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "بيان الأصناف",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'كمية ',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'وحدة',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'اسم',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'الكود',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    cubit.getBillsModel!.data[0].itemsList[0]
                                        .salesValue
                                        .toString(),
                                  ),
                                  Text(cubit.getBillsModel!.data[0].itemsList[0]
                                      .unitName
                                      .toString()),
                                  Text(cubit.getBillsModel!.data[0].itemsList[0]
                                      .itemName
                                      .toString()),
                                  Text(cubit.getBillsModel!.data[0].itemsList[0]
                                      .itemCode
                                      .toString()),
                                ],
                              ),
                            ),
                            const Text(
                              'تفاصيل الفاتورة',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            defaultFormField(
                                title: 'تفاصيل الفاتورة',
                                controller: cubit.descriptionController,
                                type: TextInputType.text,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'ادخل تفاصيل الفاتورة';
                                  }
                                },
                                hint: ''),
                            defaultFormField(
                                title: 'المبلغ الكلي',
                                controller: cubit.TotalController,
                                type: TextInputType.text,
                                width: .3.sw,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'ادخل المبلغ الكلي';
                                  }
                                },
                                hint: ''),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 30),
                              child: state is AddBillLoadingState
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                          color: Colors.black))
                                  : DefaultButton(
                                      function: () {
                                        cubit.addBill(onSuccess: () {
                                          onSuccess(
                                              context: context,
                                              text: "تم إضافة الفاتورة بنجاح");
                                        }, onError: () {
                                          onError(context: context);
                                        });
                                      },
                                      text: 'إضافة فاتورة'),
                            )
                          ],
                        ),
                      ),
              );
            },
          ),
        ));
  }
}
