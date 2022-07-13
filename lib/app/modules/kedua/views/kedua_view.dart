import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kedua_controller.dart';

class KeduaView extends GetView<KeduaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KeduaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KeduaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
