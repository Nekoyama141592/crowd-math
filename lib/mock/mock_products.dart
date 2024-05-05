import 'package:crowd_math/constants/env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class MockProducts {
  static final value = [
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_00320_POINTS_V1_ID.name),
      title: "320ポイント",
      description: "",
      price: "¥320",
      rawPrice: 320,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_00640_POINTS_V1_ID.name),
      title: "640ポイント",
      description: "",
      price: "¥640",
      rawPrice: 640,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_01000_POINTS_V1_ID.name),
      title: "1000ポイント",
      description: "(40ポイントお得)",
      price: "¥960",
      rawPrice: 960,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_01360_POINTS_V1_ID.name),
      title: "1360ポイント",
      description: "(60ポイントお得)",
      price: "¥1300",
      rawPrice: 1300,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_01680_POINTS_V1_ID.name),
      title: "1680ポイント",
      description: "(80ポイントお得)",
      price: "¥1600",
      rawPrice: 1600,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_02120_POINTS_V1_ID.name),
      title: "2120ポイント",
      description: "(120ポイントお得)",
      price: "¥2000",
      rawPrice: 2000,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_04300_POINTS_V1_ID.name),
      title: "4300ポイント",
      description: "(300ポイントお得)",
      price: "¥4000",
      rawPrice: 4000,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_06500_POINTS_V1_ID.name),
      title: "6500ポイント",
      description: "(500ポイントお得)",
      price: "¥6000",
      rawPrice: 6000,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_10900_POINTS_V1_ID.name),
      title: "10900ポイント",
      description: "(900ポイントお得)",
      price: "¥10000",
      rawPrice: 10000,
      currencyCode: "JPY",
    ),
    ProductDetails(
      id: dotenv.get(EnvKeys.CONSUMABLE_21600_POINTS_V1_ID.name),
      title: "21600ポイント",
      description: "(2000ポイントお得)",
      price: "¥19600",
      rawPrice: 19600,
      currencyCode: "JPY",
    )
  ];
}

