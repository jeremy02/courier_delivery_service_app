import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class Body extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Padding(
				padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
				child: Column(
					children: [
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: [
								IconButton(
									icon: Icon(
										Icons.menu,
										color: Colors.white,
									),
									onPressed: () {},
								),
								SizedBox(
									width: getProportionateScreenWidth(100),
									height: getProportionateScreenHeight(50),
									child: Container(
										decoration: BoxDecoration(
											color: Colors.white,
											borderRadius: BorderRadius.all(
												Radius.circular(20.0)
											)
										),
									),
								),
							],
						)
					],
				),
			),
		);
	}
}