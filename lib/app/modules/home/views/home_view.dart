import 'package:flutter/material.dart';
import 'package:flutter_local_notifications_9/app/controllers/notifikasi_controller.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  NotifikasiController notifikasiController = Get.find<NotifikasiController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notifikasiController.sendNotifikasi();
        },
      ),
    );
  }
}
