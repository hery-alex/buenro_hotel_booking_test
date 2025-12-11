import 'package:auto_route/auto_route.dart';
import 'package:buenro_hotel_booking_test/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

 @override
  RouteType get defaultRouteType => RouteType.material();


  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: LandingRoute.page,
      initial: true,
      children: [
        AutoRoute(page: OverviewRoute.page),
        AutoRoute(page: HotelsRoute.page),
        AutoRoute(page: FavouritesRoute.page),
        AutoRoute(page: AccountRoute.page),
       ]
    ),
  ];
}