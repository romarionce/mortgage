import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:mortgage/app/models/loan.dart';
import 'package:mortgage/app/models/pay.dart';
import 'package:mortgage/app/services/storage.dart';

class HomeController extends GetxController {
  var storage = StorageService.to;

  var showPayed = false.obs;
  RxList<Loan> loans = RxList.empty();

  @override
  void onReady() async {
    await getLoans();
    super.onReady();
  }

  Future<void> getLoans() async {
    loans.value = await storage.getLoans();
  }

  Map<DateTime, List<Pay>> get pays {
    List<Pay> data = [];
    loans
        .map((element) => data.addAll(element.pays
            .where((element) => showPayed.value ? true : !element.payed)))
        .toList();
    var s = _groupPays(data);
    return s;
  }

  Map<DateTime, List<Pay>> _groupPays(List<Pay> pays) {
    final groups = groupBy(pays, (Pay e) {
      return e.time;
    });
    return groups;
  }

  Loan getLoanById(String id) {
    return loans.firstWhere((element) => element.id == id);
  }

  double get getPercent => loans.fold(
      0, (previousValue, element) => previousValue + element.payedPercent);
}
