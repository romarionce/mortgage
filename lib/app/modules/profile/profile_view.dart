import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mortgage/app/core/colors.dart';
import 'package:mortgage/app/modules/profile/widgets/draw_tile.dart';

import 'profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Statistics",
              style: TextStyle(color: ColorsApp.greyText),
            ),
          ),
        ],
        centerTitle: false,
      ),
      body: Column(
        children: [
          DrawProfileTile(
              fun: () => log('1'), asset: 'share', text: 'Share with friends'),
          DrawProfileTile(
              fun: () {}, asset: 'star', text: 'Rate in the App Store'),
          DrawProfileTile(fun: () {}, asset: 'logout', text: 'Logout'),
        ],
      ),
    );
  }
}