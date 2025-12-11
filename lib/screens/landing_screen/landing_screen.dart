import 'package:auto_route/auto_route.dart';
import 'package:buenro_hotel_booking_test/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  AutoTabsRouter(
      routes: [
         OverviewRoute(),
         HotelsRoute(),
         FavouritesRoute(),
         AccountRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(child: child),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 5,
            selectedIconTheme: IconThemeData(color:Colors.black87),
            selectedItemColor:Colors.black87,
            unselectedIconTheme: IconThemeData(color: Colors.black54),
            currentIndex: AutoTabsRouter.of(context).activeIndex,
            onTap: (value) => AutoTabsRouter.of(context).setActiveIndex(value),
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.lightBlue[50],
                icon: Icon(Icons.dashboard),
                label: "Overview",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.house),
                label: "Hotels",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.checklist_outlined),
                label: "Favourites",
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Account",
              ),
            ]),
        );
      },
    );
  }
}