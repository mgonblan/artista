import 'package:get/get.dart';import 'card_item_model.dart';import 'card1_item_model.dart';class DetailEventModel {RxList<CardItemModel> cardItemList = RxList.generate(3,(index) => CardItemModel());

RxList<Card1ItemModel> card1ItemList = RxList.generate(3,(index) => Card1ItemModel());

 }
