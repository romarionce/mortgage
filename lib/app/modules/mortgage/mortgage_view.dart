import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mortgage/app/core/colors.dart';
import 'package:mortgage/app/core/constants.dart';
import 'package:mortgage/app/modules/mortgage/mortgage_controller.dart';
import 'package:mortgage/app/modules/mortgage/widgets/prop_slider.dart';

class MortgageView extends GetView<MortgageController> {
  const MortgageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var textScheme = Get.theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mortgage calculator'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(Constants.defaultPad),
              child: Text(
                'Loan type',
                style: textScheme.titleLarge,
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                itemCount: controller.typesLoan.length,
                shrinkWrap: true,
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Obx(() {
                    var item = controller.typesLoan[index];
                    var isActive = controller.activeLoan == index;
                    return GestureDetector(
                      onTap: () => controller.activeLoan = index,
                      child: Container(
                        width: 108,
                        margin:
                            const EdgeInsets.only(left: Constants.defaultPad),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isActive ? ColorsApp.main : ColorsApp.light,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(Constants.defaultPad),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: SvgPicture.asset(
                                  'assets/${item.icon}.svg',
                                  color: isActive
                                      ? ColorsApp.light
                                      : ColorsApp.main,
                                ),
                              ),
                              Text(
                                item.name,
                                style: TextStyle(
                                    color: isActive
                                        ? ColorsApp.light
                                        : ColorsApp.main,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Constants.defaultPad),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Text('Name', style: textScheme.titleLarge),
                  const SizedBox(height: Constants.defaultPad),
                  TextField(
                    controller: controller.nameC,
                    decoration: const InputDecoration(hintText: "Name"),
                  ),
                  const SizedBox(height: Constants.defaultPad * 1.5),
                  Text(
                    'Property value',
                    style: textScheme.titleLarge,
                  ),
                  const SizedBox(height: Constants.defaultPad),
                  Obx(() => PropSlider(
                        textEditingController: controller.propC,
                        value: controller.valueProp,
                        onChanged: (v) => controller.valueProp = v,
                        min: 5000,
                        max: 300000,
                      )),
                  const SizedBox(height: Constants.defaultPad * 1.5),
                  Obx(() => Text(
                        'An initial fee (${controller.initPercent} %)',
                        style: textScheme.titleLarge,
                      )),
                  const SizedBox(height: Constants.defaultPad),
                  Obx(() => PropSlider(
                        textEditingController: controller.initC,
                        value: controller.initProp,
                        onChanged: (v) => controller.initProp = v,
                        min: 0,
                        max: controller.maxInitValue.value,
                      )),
                  const SizedBox(height: Constants.defaultPad * 1.5),
                  const SizedBox(height: Constants.defaultPad),
                  Text(
                    'Term (years)',
                    style: textScheme.titleLarge,
                  ),
                  const SizedBox(height: Constants.defaultPad),
                  Obx(() => PropSlider(
                        textEditingController: controller.yearsC,
                        value: controller.years,
                        onChanged: (v) => controller.years = v,
                        min: 1,
                        max: 30,
                        divisions: 30,
                      )),
                  const SizedBox(height: Constants.defaultPad * 2),
                  Text('Rate', style: textScheme.titleLarge),
                  const SizedBox(height: Constants.defaultPad),
                  Obx(() => PropSlider(
                        textEditingController: controller.rateC,
                        value: controller.rate,
                        onChanged: (v) => controller.rate = v,
                        min: 0,
                        max: 30,
                        divisions: 30 * 10,
                      )),
                  const SizedBox(
                    height: Constants.defaultPad * 2,
                  ),
                  Text('Overpayment', style: textScheme.titleLarge),
                  const SizedBox(height: Constants.defaultPad),
                  Obx(
                    () => TextField(
                      enabled: false,
                      controller: TextEditingController.fromValue(
                        TextEditingValue(
                          text: "${controller.overpay.toStringAsFixed(2)} \$",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: Constants.defaultPad * 2),
                  Text("Monthly payment", style: textScheme.titleLarge),
                  const SizedBox(height: Constants.defaultPad),
                  Obx(
                    () => TextField(
                      enabled: false,
                      controller: TextEditingController.fromValue(
                        TextEditingValue(
                          text: "${controller.monthPay.toStringAsFixed(2)} \$",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
