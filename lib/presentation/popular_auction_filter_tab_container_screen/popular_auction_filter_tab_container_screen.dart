import 'controller/popular_auction_filter_tab_container_controller.dart';
import 'package:artista/core/app_export.dart';
import 'package:artista/presentation/popular_auction_filter_page/popular_auction_filter_page.dart';
import 'package:flutter/material.dart';

class PopularAuctionFilterTabContainerScreen
    extends GetWidget<PopularAuctionFilterTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: AppDecoration.fillBluegray900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Text(
                        "lbl_filter_artwork".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistBold24Gray100,
                      ),
                      Container(
                        height: getVerticalSize(
                          42,
                        ),
                        width: getHorizontalSize(
                          325,
                        ),
                        margin: getMargin(
                          top: 27,
                        ),
                        child: TabBar(
                          controller: controller.frame427320527Controller,
                          labelColor: ColorConstant.deepOrange400,
                          labelStyle: TextStyle(
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                          unselectedLabelColor: ColorConstant.gray400,
                          unselectedLabelStyle: TextStyle(
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                          ),
                          indicatorColor: ColorConstant.deepOrange400,
                          tabs: [
                            Tab(
                              child: Text(
                                "lbl_sort_by".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_medium".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_price".tr,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          385,
                        ),
                        child: TabBarView(
                          controller: controller.frame427320527Controller,
                          children: [
                            PopularAuctionFilterPage(),
                            PopularAuctionFilterPage(),
                            PopularAuctionFilterPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
