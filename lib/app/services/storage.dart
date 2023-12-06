import 'dart:convert';

import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mortgage/app/models/loan.dart';

class StorageService extends GetxService {
  static StorageService get to => Get.find();
  late Box<String> box;

  Future<List<Loan>> getLoans() async {
    var loansString = box.values;
    var loans = loansString.map((element) {
      var json = jsonDecode(element);
      return Loan.fromJson(json);
    }).toList();
    return loans;
  }

  Future<void> writeLoan(Loan loan) async {
    var data = jsonEncode(loan.toJson());
    return await box.put(loan.id, data);
  }

  Future<void> removeLoan(Loan loan) async {
    return await box.delete(loan.id);
  }

  Future<int> clear() async => box.clear();

  Future<StorageService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox<String>('loans');
    return this;
  }
}
