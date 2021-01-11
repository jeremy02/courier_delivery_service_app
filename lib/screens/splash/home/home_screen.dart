import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
	static String routeName = "/home";
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: kPrimaryColor,
			body: Stack(
				children: [
					_buildBackground(),
					HomeBody(),
				],
			),
		);
	}
	
	Column _buildBackground() {
		return Column(
			children: [
				Container(
					alignment: Alignment.topCenter,
					height: getProportionateScreenHeight(200),
					decoration: BoxDecoration(
						color: Colors.transparent
					),
				),
				Expanded(
					child: Container(
						height: double.infinity,
						decoration: BoxDecoration(
							color: Colors.white
						),
					),
				),
			],
		);
	}
}

