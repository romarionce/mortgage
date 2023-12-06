import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mortgage/app/core/colors.dart';
import 'package:mortgage/app/core/constants.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Loans'),
          ],
        ),
        actions: [
          Obx(() => IconButton(
                onPressed: () =>
                    controller.showPayed.value = !controller.showPayed.value,
                icon: Icon(controller.showPayed.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined),
                color: controller.showPayed.value
                    ? ColorsApp.light
                    : ColorsApp.main,
              ))
        ],
        centerTitle: false,
      ),
      bottomNavigationBar: Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: 12,
            height: controller.getPercent,
            decoration: BoxDecoration(
              color: ColorsApp.main,
              borderRadius: BorderRadius.circular(4),
            ),
          )),
      body: SingleChildScrollView(
        child: Obx(() => Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.loans.length,
                  itemBuilder: (context, index) {
                    var s = controller.loans[index];
                    return ListTile(
                      isThreeLine: true,
                      dense: true,
                      title: Text(
                        "${s.name} (${s.years * 12} m)",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${s.alreadyPayed.toStringAsFixed(2)} / ${s.summ.toStringAsFixed(2)} \$",
                            style: const TextStyle(color: ColorsApp.greyText),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: Get.width * s.payedPercent,
                            height: 2,
                            decoration: BoxDecoration(
                              color: ColorsApp.main,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.close_rounded,
                          color: ColorsApp.greyText,
                        ),
                        onPressed: () async {
                          await controller.storage.removeLoan(s);
                          await controller.getLoans();
                        },
                      ),
                    );
                  },
                ),
                if (controller.loans.isNotEmpty)
                  const Divider()
                else
                  const Text(
                    'You haven\'t add any loan yet!',
                    style: TextStyle(
                      color: ColorsApp.greyText,
                    ),
                  ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.pays.length,
                  itemBuilder: (context, index) {
                    var key = controller.pays.keys.elementAt(index);
                    var vals = controller.pays.values.elementAt(index);
                    return ListTile(
                      dense: true,
                      title: Text(Constants.dateFormatter.format(key)),
                      subtitle: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: vals.length,
                        itemBuilder: (context, index) {
                          var pay = vals[index];
                          var loan = controller.getLoanById(pay.loanId);
                          return ListTile(
                            dense: true,
                            onTap: () async {
                              var newPay = pay.copyWith(payed: !pay.payed);
                              var pays = [...loan.pays];
                              pays.replaceRange(
                                  newPay.id, newPay.id + 1, [newPay]);
                              loan = loan.copyWith(pays: pays);
                              await controller.storage.writeLoan(loan);
                              await controller.getLoans();
                              controller.update();
                            },
                            leading: SvgPicture.asset(
                              'assets/${loan.type}.svg',
                              color:
                                  pay.payed ? ColorsApp.light : ColorsApp.main,
                            ),
                            title: Text(
                              loan.name,
                              style: TextStyle(
                                  color: pay.payed
                                      ? ColorsApp.light
                                      : ColorsApp.mainText),
                            ),
                            subtitle: Text(
                              "payment: ${pay.summ.toStringAsFixed(2)} \$",
                              style: TextStyle(
                                  color: pay.payed
                                      ? ColorsApp.light
                                      : ColorsApp.greyText),
                            ),
                            trailing: Icon(
                              pay.payed ? Icons.check_circle : Icons.add_circle,
                              color:
                                  pay.payed ? ColorsApp.light : ColorsApp.main,
                            ),
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            )),
      ),
    );
  }
}
