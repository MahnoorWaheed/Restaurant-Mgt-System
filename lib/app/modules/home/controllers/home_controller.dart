import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_mgt_systm/app/data/services/datebase_helper.dart';
import 'package:rest_mgt_systm/app/modules/constants/constant.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  final dbHelper = DatabaseHelper.instance;
  var datalist = [].obs;

  var backColor = AppColors.white.obs;
  var backTableColor = AppColors.sampleColor.obs;
  var emptyTableColor = AppColors.sampleColor.obs;
  var amountColor = AppColors.sampleColor.obs;
  var crossAxisCount = 2.obs;

  void changeCrossAxisCount(value) {
    crossAxisCount.value = value;
  }

  void changeBackColor(color) {
    backColor.value = Color(color);
  }

  void changeBackTableColor(color) {
    backTableColor.value = Color(color);
  }

  void changeEmptyTableColor(color) {
    emptyTableColor.value = Color(color);
  }

  void changeAmountColor(color) {
    amountColor.value = Color(color);
  }

  void insertPortion(String itemName, int itemPrice, int itemqty) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.dataName: itemName,
      DatabaseHelper.dataPrice: itemPrice,
      DatabaseHelper.dataQty: itemqty,
      DatabaseHelper.portionId: 3,
      DatabaseHelper.portionName: 'Burger',
    };
    final id = await dbHelper.insert(row);
    log('inserted row id: $id');
  }

  void queryPortion() async {
    final allRows = await dbHelper.queryAll();
    print('query all rows: ${allRows[0]['dataName']}');
    datalist.value = allRows;
  }

  // void _updatePortion() async {
  //   // row to update
  //   Map<String, dynamic> row = {
  //     DatabaseHelper.columnId: 1,
  //     DatabaseHelper.columnName: 'Mary',
  //     DatabaseHelper.columnAge: 32
  //   };
  //   final rowsAffected = await dbHelper.update(row);
  //   print('updated $rowsAffected row(s)');
  // }

  void deletePortion() async {
    // Assuming that the number of rows is the id for the last row.
    final id = await dbHelper.queryRowCount();
    final rowsDeleted = await dbHelper.delete(id);
    print('deleted $rowsDeleted row(s): row $id');
  }

  // @override
  // void onInit() {
  //   insertPortion('Nuggets',600,12 );
  //   queryPortion();
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
