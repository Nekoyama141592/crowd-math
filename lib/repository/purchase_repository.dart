import 'package:crowd_math/repository/result.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
class PurchaseRepository {
  InAppPurchase get inAppPurchase => InAppPurchase.instance;

  FutureResult<bool> consumePurchase(PurchaseDetails purchaseDetails) async {
    try {
      
      final InAppPurchaseAndroidPlatformAddition androidAddition = inAppPurchase
          .getPlatformAddition<InAppPurchaseAndroidPlatformAddition>();
      await androidAddition.consumePurchase(purchaseDetails);
      return const Result.success(true);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<List<ProductDetails>> queryProductDetails(
      Set<String> identifiers) async {
    try {
      final ProductDetailsResponse productDetailResponse =
          await inAppPurchase.queryProductDetails(identifiers);
      if (productDetailResponse.error != null) {
        return const Result.failure();
      } else {
        return Result.success(productDetailResponse.productDetails);
      }
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<bool> buyConsumable(
      PurchaseParam purchaseParam, bool autoConsume) async {
    try {
      await inAppPurchase.buyConsumable(
          purchaseParam: purchaseParam, autoConsume: autoConsume);
      return const Result.success(true);
    } catch (e) {
      return const Result.failure();
    }
  }
  FutureResult<bool> restorePurchases() async {
    try {
      await inAppPurchase.restorePurchases();
      return const Result.success(true);
    } catch (e) {
      return const Result.failure();
    }
  }
}