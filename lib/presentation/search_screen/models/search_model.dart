import 'package:get/get.dart';import 'recentsearch_item_model.dart';import 'trendingsearch_item_model.dart';import 'search_item_model.dart';class SearchModel {RxList<RecentsearchItemModel> recentsearchItemList = RxList.generate(5,(index) =>RecentsearchItemModel());

RxList<TrendingsearchItemModel> trendingsearchItemList = RxList.generate(5,(index) =>TrendingsearchItemModel());

RxList<SearchItemModel> searchItemList = RxList.generate(3,(index) => SearchItemModel());

 }
