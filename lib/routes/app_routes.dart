import 'package:artista/presentation/splash_screen/splash_screen.dart';
import 'package:artista/presentation/splash_screen/binding/splash_binding.dart';
import 'package:artista/presentation/on_boarding_one_screen/on_boarding_one_screen.dart';
import 'package:artista/presentation/on_boarding_one_screen/binding/on_boarding_one_binding.dart';
import 'package:artista/presentation/on_boarding_two_screen/on_boarding_two_screen.dart';
import 'package:artista/presentation/on_boarding_two_screen/binding/on_boarding_two_binding.dart';
import 'package:artista/presentation/on_boarding_three_screen/on_boarding_three_screen.dart';
import 'package:artista/presentation/on_boarding_three_screen/binding/on_boarding_three_binding.dart';
import 'package:artista/presentation/login_screen/login_screen.dart';
import 'package:artista/presentation/login_screen/binding/login_binding.dart';
import 'package:artista/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:artista/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:artista/presentation/create_password_screen/create_password_screen.dart';
import 'package:artista/presentation/create_password_screen/binding/create_password_binding.dart';
import 'package:artista/presentation/follow_artist_screen/follow_artist_screen.dart';
import 'package:artista/presentation/follow_artist_screen/binding/follow_artist_binding.dart';
import 'package:artista/presentation/follow_categories_screen/follow_categories_screen.dart';
import 'package:artista/presentation/follow_categories_screen/binding/follow_categories_binding.dart';
import 'package:artista/presentation/budget_screen/budget_screen.dart';
import 'package:artista/presentation/budget_screen/binding/budget_binding.dart';
import 'package:artista/presentation/home_container_screen/home_container_screen.dart';
import 'package:artista/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:artista/presentation/popular_auction_horizontal_view_screen/popular_auction_horizontal_view_screen.dart';
import 'package:artista/presentation/popular_auction_horizontal_view_screen/binding/popular_auction_horizontal_view_binding.dart';
import 'package:artista/presentation/popular_auction_vertical_view_screen/popular_auction_vertical_view_screen.dart';
import 'package:artista/presentation/popular_auction_vertical_view_screen/binding/popular_auction_vertical_view_binding.dart';
import 'package:artista/presentation/popular_auction_filter_tab_container_screen/popular_auction_filter_tab_container_screen.dart';
import 'package:artista/presentation/popular_auction_filter_tab_container_screen/binding/popular_auction_filter_tab_container_binding.dart';
import 'package:artista/presentation/popular_auction_filter_result_screen/popular_auction_filter_result_screen.dart';
import 'package:artista/presentation/popular_auction_filter_result_screen/binding/popular_auction_filter_result_binding.dart';
import 'package:artista/presentation/trending_artist_screen/trending_artist_screen.dart';
import 'package:artista/presentation/trending_artist_screen/binding/trending_artist_binding.dart';
import 'package:artista/presentation/detail_artist_screen/detail_artist_screen.dart';
import 'package:artista/presentation/detail_artist_screen/binding/detail_artist_binding.dart';
import 'package:artista/presentation/search_screen/search_screen.dart';
import 'package:artista/presentation/search_screen/binding/search_binding.dart';
import 'package:artista/presentation/search_result_artwork_tab_container_screen/search_result_artwork_tab_container_screen.dart';
import 'package:artista/presentation/search_result_artwork_tab_container_screen/binding/search_result_artwork_tab_container_binding.dart';
import 'package:artista/presentation/bidart_event_screen/bidart_event_screen.dart';
import 'package:artista/presentation/bidart_event_screen/binding/bidart_event_binding.dart';
import 'package:artista/presentation/detail_event_tab_container_screen/detail_event_tab_container_screen.dart';
import 'package:artista/presentation/detail_event_tab_container_screen/binding/detail_event_tab_container_binding.dart';
import 'package:artista/presentation/search_event_screen/search_event_screen.dart';
import 'package:artista/presentation/search_event_screen/binding/search_event_binding.dart';
import 'package:artista/presentation/detail_art_screen/detail_art_screen.dart';
import 'package:artista/presentation/detail_art_screen/binding/detail_art_binding.dart';
import 'package:artista/presentation/register_to_bid_no_data_screen/register_to_bid_no_data_screen.dart';
import 'package:artista/presentation/register_to_bid_no_data_screen/binding/register_to_bid_no_data_binding.dart';
import 'package:artista/presentation/add_card_screen/add_card_screen.dart';
import 'package:artista/presentation/add_card_screen/binding/add_card_binding.dart';
import 'package:artista/presentation/add_address_screen/add_address_screen.dart';
import 'package:artista/presentation/add_address_screen/binding/add_address_binding.dart';
import 'package:artista/presentation/register_to_bid_completed_screen/register_to_bid_completed_screen.dart';
import 'package:artista/presentation/register_to_bid_completed_screen/binding/register_to_bid_completed_binding.dart';
import 'package:artista/presentation/submit_work_screen/submit_work_screen.dart';
import 'package:artista/presentation/submit_work_screen/binding/submit_work_binding.dart';
import 'package:artista/presentation/whishlist_works_tab_container_screen/whishlist_works_tab_container_screen.dart';
import 'package:artista/presentation/whishlist_works_tab_container_screen/binding/whishlist_works_tab_container_binding.dart';
import 'package:artista/presentation/setting_account_screen/setting_account_screen.dart';
import 'package:artista/presentation/setting_account_screen/binding/setting_account_binding.dart';
import 'package:artista/presentation/setting_screen/setting_screen.dart';
import 'package:artista/presentation/setting_screen/binding/setting_binding.dart';
import 'package:artista/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:artista/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onBoardingOneScreen = '/on_boarding_one_screen';

  static const String onBoardingTwoScreen = '/on_boarding_two_screen';

  static const String onBoardingThreeScreen = '/on_boarding_three_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String createPasswordScreen = '/create_password_screen';

  static const String followArtistScreen = '/follow_artist_screen';

  static const String followCategoriesScreen = '/follow_categories_screen';

  static const String budgetScreen = '/budget_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String popularAuctionHorizontalViewScreen =
      '/popular_auction_horizontal_view_screen';

  static const String popularAuctionVerticalViewScreen =
      '/popular_auction_vertical_view_screen';

  static const String popularAuctionFilterPage = '/popular_auction_filter_page';

  static const String popularAuctionFilterTabContainerScreen =
      '/popular_auction_filter_tab_container_screen';

  static const String popularAuctionFilterResultScreen =
      '/popular_auction_filter_result_screen';

  static const String trendingArtistScreen = '/trending_artist_screen';

  static const String detailArtistScreen = '/detail_artist_screen';

  static const String searchScreen = '/search_screen';

  static const String searchResultArtworkPage = '/search_result_artwork_page';

  static const String searchResultArtworkTabContainerScreen =
      '/search_result_artwork_tab_container_screen';

  static const String searchResultArtworkOnePage =
      '/search_result_artwork_one_page';

  static const String bidartEventScreen = '/bidart_event_screen';

  static const String detailEventPage = '/detail_event_page';

  static const String detailEventTabContainerScreen =
      '/detail_event_tab_container_screen';

  static const String searchEventScreen = '/search_event_screen';

  static const String discoverAllArtPage = '/discover_all_art_page';

  static const String discoverPhotogrophyPage = '/discover_photogrophy_page';

  static const String discoverPhotogrophyTabContainerPage =
      '/discover_photogrophy_tab_container_page';

  static const String detailArtScreen = '/detail_art_screen';

  static const String registerToBidNoDataScreen =
      '/register_to_bid_no_data_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String registerToBidCompletedScreen =
      '/register_to_bid_completed_screen';

  static const String bidPage = '/bid_page';

  static const String inboxPage = '/inbox_page';

  static const String inboxTabContainerPage = '/inbox_tab_container_page';

  static const String archiveEmptyPage = '/archive_empty_page';

  static const String profilePage = '/profile_page';

  static const String submitWorkScreen = '/submit_work_screen';

  static const String whishlistWorksPage = '/whishlist_works_page';

  static const String whishlistWorksTabContainerScreen =
      '/whishlist_works_tab_container_screen';

  static const String whislistShowPage = '/whislist_show_page';

  static const String settingAccountScreen = '/setting_account_screen';

  static const String settingScreen = '/setting_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onBoardingOneScreen,
      page: () => OnBoardingOneScreen(),
      bindings: [
        OnBoardingOneBinding(),
      ],
    ),
    GetPage(
      name: onBoardingTwoScreen,
      page: () => OnBoardingTwoScreen(),
      bindings: [
        OnBoardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onBoardingThreeScreen,
      page: () => OnBoardingThreeScreen(),
      bindings: [
        OnBoardingThreeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: createPasswordScreen,
      page: () => CreatePasswordScreen(),
      bindings: [
        CreatePasswordBinding(),
      ],
    ),
    GetPage(
      name: followArtistScreen,
      page: () => FollowArtistScreen(),
      bindings: [
        FollowArtistBinding(),
      ],
    ),
    GetPage(
      name: followCategoriesScreen,
      page: () => FollowCategoriesScreen(),
      bindings: [
        FollowCategoriesBinding(),
      ],
    ),
    GetPage(
      name: budgetScreen,
      page: () => BudgetScreen(),
      bindings: [
        BudgetBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: popularAuctionHorizontalViewScreen,
      page: () => PopularAuctionHorizontalViewScreen(),
      bindings: [
        PopularAuctionHorizontalViewBinding(),
      ],
    ),
    GetPage(
      name: popularAuctionVerticalViewScreen,
      page: () => PopularAuctionVerticalViewScreen(),
      bindings: [
        PopularAuctionVerticalViewBinding(),
      ],
    ),
    GetPage(
      name: popularAuctionFilterTabContainerScreen,
      page: () => PopularAuctionFilterTabContainerScreen(),
      bindings: [
        PopularAuctionFilterTabContainerBinding(),
      ],
    ),
    GetPage(
      name: popularAuctionFilterResultScreen,
      page: () => PopularAuctionFilterResultScreen(),
      bindings: [
        PopularAuctionFilterResultBinding(),
      ],
    ),
    GetPage(
      name: trendingArtistScreen,
      page: () => TrendingArtistScreen(),
      bindings: [
        TrendingArtistBinding(),
      ],
    ),
    GetPage(
      name: detailArtistScreen,
      page: () => DetailArtistScreen(),
      bindings: [
        DetailArtistBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultArtworkTabContainerScreen,
      page: () => SearchResultArtworkTabContainerScreen(),
      bindings: [
        SearchResultArtworkTabContainerBinding(),
      ],
    ),
    GetPage(
      name: bidartEventScreen,
      page: () => BidartEventScreen(),
      bindings: [
        BidartEventBinding(),
      ],
    ),
    GetPage(
      name: detailEventTabContainerScreen,
      page: () => DetailEventTabContainerScreen(),
      bindings: [
        DetailEventTabContainerBinding(),
      ],
    ),
    GetPage(
      name: searchEventScreen,
      page: () => SearchEventScreen(),
      bindings: [
        SearchEventBinding(),
      ],
    ),
    GetPage(
      name: detailArtScreen,
      page: () => DetailArtScreen(),
      bindings: [
        DetailArtBinding(),
      ],
    ),
    GetPage(
      name: registerToBidNoDataScreen,
      page: () => RegisterToBidNoDataScreen(),
      bindings: [
        RegisterToBidNoDataBinding(),
      ],
    ),
    GetPage(
      name: addCardScreen,
      page: () => AddCardScreen(),
      bindings: [
        AddCardBinding(),
      ],
    ),
    GetPage(
      name: addAddressScreen,
      page: () => AddAddressScreen(),
      bindings: [
        AddAddressBinding(),
      ],
    ),
    GetPage(
      name: registerToBidCompletedScreen,
      page: () => RegisterToBidCompletedScreen(),
      bindings: [
        RegisterToBidCompletedBinding(),
      ],
    ),
    GetPage(
      name: submitWorkScreen,
      page: () => SubmitWorkScreen(),
      bindings: [
        SubmitWorkBinding(),
      ],
    ),
    GetPage(
      name: whishlistWorksTabContainerScreen,
      page: () => WhishlistWorksTabContainerScreen(),
      bindings: [
        WhishlistWorksTabContainerBinding(),
      ],
    ),
    GetPage(
      name: settingAccountScreen,
      page: () => SettingAccountScreen(),
      bindings: [
        SettingAccountBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
