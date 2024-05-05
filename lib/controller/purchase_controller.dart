import 'dart:io';
import 'package:crowd_math/mock/mock_products.dart';
import 'package:crowd_math/repository/purchase_repository.dart';
import 'package:crowd_math/ui_core/toast_core.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

class PurchaseController extends GetxController {
  final rxProducts = <ProductDetails>[].obs;
  PurchaseRepository get repository => PurchaseRepository();
  static const autoConsume = true;
  final loading = false.obs;
  @override
  void onInit() {
    _fetchProducts();
    super.onInit();
  }

  Future<void> _fetchProducts() async {
    if (rxProducts.isNotEmpty) return;
    rxProducts.value = MockProducts.value;
  }

  Future<void> onConsumableButtonPressed(ProductDetails productDetails) async {
    if (loading.value) return;
    await cancelTransctions();
    final purchaseParam = PurchaseParam(productDetails: productDetails);
    await ToastCore.showFlutterToast("情報を取得しています。 \nしばらくお待ちください。");
    loading(true);
    final result = await repository.buyConsumable(purchaseParam, autoConsume);
    result.when(
        success: (_) {},
        failure: () {
          ToastCore.showFlutterToast("もう一度ボタンを押してください");
        });
    loading(false);
  }

  Future<void> cancelTransctions() async {
    if (Platform.isIOS) {
      final paymentWrapper = SKPaymentQueueWrapper();
      final transactions = await paymentWrapper.transactions();
      for (final tx in transactions) {
        await paymentWrapper.finishTransaction(tx);
      }
    }
  }
}

