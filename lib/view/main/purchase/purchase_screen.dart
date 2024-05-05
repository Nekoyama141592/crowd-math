import 'package:crowd_math/controller/purchase_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PurchaseController());
    return Obx(() {
      final products = controller.rxProducts;
      return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          title: Text(product.title),
          subtitle: Text(product.description),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.75),
            ),
            onPressed: () {
            controller.onConsumableButtonPressed(product);
          }, child: Text(product.price,style: const TextStyle(color: Colors.black),),),
        );
      },
    );
    });
  }
}

