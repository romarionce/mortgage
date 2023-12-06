import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mortgage/app/core/constants.dart';
import 'package:mortgage/app/models/loan.dart';
import 'package:mortgage/app/models/pay.dart';
import 'package:mortgage/app/modules/home/home_controller.dart';
import 'package:mortgage/app/modules/main_page/main_page_controller.dart';
import 'package:mortgage/app/services/storage.dart';

class MortgageController extends GetxController {
  final nameC = TextEditingController(text: 'My mortgage');
  String get name => nameC.text;

  final _valueProp = 5000.0.obs;
  final propC = TextEditingController(text: '');
  set valueProp(double v) {
    _valueProp.value = v;
    maxInitValue.value = v / 2;
    if (initProp > maxInitValue.value) initProp = maxInitValue.value;
    propC.text = Constants.currencyFormatter.format(v);
  }

  double get valueProp => _valueProp.value;

  final maxInitValue = .0.obs;
  final initC = TextEditingController(text: '');
  final _initProp = .0.obs;
  double get initProp => _initProp.value;
  String get initPercent => (initProp / valueProp * 100).toStringAsFixed(2);
  set initProp(double v) {
    _initProp.value = v;
    initC.text = Constants.currencyFormatter.format(v);
  }

  final _activeLoanIndex = 0.obs;
  set activeLoan(int index) => _activeLoanIndex.value = index;
  int get activeLoan => _activeLoanIndex.value;

  final yearsC = TextEditingController(text: '');
  final _years = 5.0.obs;
  set years(double index) {
    yearsC.text = years.ceil().toString();
    _years.value = index;
  }

  final rateC = TextEditingController(text: '');
  final _rate = 10.0.obs;
  double get rate => _rate.value;
  set rate(double index) {
    rateC.text = "${rate.toStringAsFixed(1)} %";
    _rate.value = index;
  }

  double get years => _years.value;

  List<LoanType> typesLoan = [
    (icon: 'home', name: 'House'),
    (icon: 'car', name: 'Car'),
    (icon: 'study', name: 'Study'),
    (icon: 'personal', name: 'Personal'),
  ];

  double get monthRate => rate / 12 / 100;
  double get obRate => pow(1 + monthRate, years * 12).toDouble();
  double get monthPay => valueProp * monthRate * obRate / (obRate - 1);
  double get overpay => monthPay * years * 12 - valueProp;

  @override
  void onReady() {
    valueProp = _valueProp.value;
    initProp = _initProp.value;
    rate = 10;
    years = 5;
    super.onReady();
  }

  void createLoan() async {
    if (name.isEmpty) return;
    var now = DateTime.now();
    var loanId = now.microsecondsSinceEpoch.toStringAsFixed(8) + name;
    List<Pay> pays = List.generate(
      (years * 12).ceil(),
      (index) => Pay(index, loanId, monthPay, false,
          time: DateTime(now.year, now.month + index)),
    );
    Loan loan = Loan(loanId, name, pays, valueProp, monthPay, rate,
        years.ceil(), now, typesLoan[activeLoan].icon);
    await StorageService.to.writeLoan(loan);
    var mainPage = Get.find<MainPageController>();
    mainPage.setActive(0);
    var homeCtrl = Get.find<HomeController>();
    homeCtrl.getLoans();
    nameC.text = "";
  }
}

typedef LoanType = ({
  String icon,
  String name,
});
