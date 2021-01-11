import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../size_config.dart';
import '../components/points_container.dart';
import 'top_container.dart';

class HomeBody extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Padding(
				padding: EdgeInsets.fromLTRB(10, 15, 15, 0),
				child: Column(
					children: [
						buildAppBar(),
						buildProductsLayout(),
					],
				),
			),
		);
	}

    Row buildAppBar() {
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
			children: [
				IconButton(
					padding: EdgeInsets.only(
						left: 0.0,
					),
					icon: SvgPicture.asset(
						"assets/icons/menu.svg",
						width: getProportionateScreenWidth(14),
						height: getProportionateScreenWidth(14),
						color: Colors.white,
					),
					onPressed: () {},
				),
				PointsContainer(),
			],
		);
    }
}

Widget buildProductsLayout() {
	return SingleChildScrollView(
		child: Padding(
			padding: EdgeInsets.only(
				left: 5.0
			),
			child: Column(
				children: [
					SizedBox(height: getProportionateScreenHeight(15)),
					TopContainer(),
				],
			),
		)
	);
}