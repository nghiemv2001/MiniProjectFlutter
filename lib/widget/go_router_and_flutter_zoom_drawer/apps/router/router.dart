import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/apps/root_page.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/apps/router/routerName.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/category/category_page.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/home/home_page.dart';
import 'package:miniprojectflutter/widget/go_router_and_flutter_zoom_drawer/pages/product/product_page.dart';

class RouterCustom {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      ShellRoute(
          builder: (context, state, child) {
            return RootPage(
              child: child,
            );
          },
          routes: [
            GoRoute(
              path: '/',
              name: RouterName.home,
              builder: (BuildContext context, GoRouterState state) {
                return Home_Page();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'product',
                  name: RouterName.homeProduct,
                  builder: (BuildContext context, GoRouterState state) {
                    return const Product_Page();
                  },
                ),
              ],
            ),
            GoRoute(
              path: '/category',
              name: RouterName.category,
              builder: (BuildContext context, GoRouterState state) {
                return const CategoryPage();
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'product',
                  name: RouterName.categoryProduct,
                  builder: (BuildContext context, GoRouterState state) {
                    return const Product_Page();
                  },
                ),
              ],
            ),
          ])
    ],
  );
}
