
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class PointsContainer extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			padding: EdgeInsets.symmetric(
				vertical: 5.0,
				horizontal: 5.0
			),
			decoration: BoxDecoration(
				color: Colors.white,
				borderRadius: BorderRadius.all(
					Radius.circular(20.0)
				)
			),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.start,
				children: [
					Container(
						padding: const EdgeInsets.all(5),
						width: getProportionateScreenWidth(40),
						height: getProportionateScreenHeight(40),
						decoration: BoxDecoration(
							color: Colors.orange.withOpacity(0.2),
							shape: BoxShape.circle
						),
						child: SvgPicture.asset("assets/icons/crown.svg"),
					),
					Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						mainAxisAlignment: MainAxisAlignment.start,
						children: [
							Text(
								"Total Points",
								textAlign: TextAlign.center,
								style: TextStyle(
									color: kTextColor,
									fontWeight: FontWeight.w300,
									fontSize: getProportionateScreenWidth(10)
								),
							),
							Text(
								"\$40",
								textAlign: TextAlign.start,
								style: TextStyle(
									color: Colors.black,
									fontWeight: FontWeight.bold,
									fontSize: getProportionateScreenWidth(11)
								),
							),
						],
					),
				],
			),
		);
	}
}