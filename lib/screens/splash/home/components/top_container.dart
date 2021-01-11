import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class TopContainer extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Card(
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(8),
			),
			child: InkWell(
				borderRadius: BorderRadius.circular(8),
				onTap: (){
					print("Tapped");
				},
				child: Container(
					width: double.infinity,
					padding: EdgeInsets.all(10.0),
					child: Column(
						children: [
							_buildTopLayout(),
							SizedBox(
								height: getProportionateScreenHeight(10),
							),
							_buildMiddleLayout()
						],
					),
				),
			),
		);
	}
	
	Row _buildTopLayout() {
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
			children: [
				Text(
					"Ongoing",
					textAlign: TextAlign.start,
					style: TextStyle(
						color: Colors.black,
						fontWeight: FontWeight.bold,
						fontSize: getProportionateScreenWidth(12.5)
					),
				),
				Text(
					"From: ELS Computer",
					textAlign: TextAlign.center,
					style: TextStyle(
						fontSize: getProportionateScreenWidth(11)
					),
				),
			],
		);
	}
	
	Card _buildMiddleLayout() {
		return Card(
			elevation: 2.0,
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(6.0),
			),
			child: Container(
				width: double.infinity,
				height: 100.0,
				decoration: BoxDecoration(
					image: DecorationImage(
						image: AssetImage("assets/images/maps_bg.png"),
						fit: BoxFit.cover,
					),
				),
				child: Stack(
					children: [
						Container(
							width: getProportionateScreenWidth(100),
							height: double.infinity,
							margin: EdgeInsets.all(8.0),
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(5.0),
								image: DecorationImage(
									image: AssetImage("assets/images/product_image_2.png"),
									fit: BoxFit.cover,
								),
							),
						),
						Container(
							width: getProportionateScreenWidth(100),
							height: double.infinity,
							margin: EdgeInsets.all(8.0),
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(5.0),
								color: Colors.black.withOpacity(0.3)
							),
							child: Align(
								alignment: Alignment.bottomCenter,
								child: Padding(
									padding: EdgeInsets.only(
										bottom: 4.0
									),
									child: Text(
										"MacBook Pro",
										textAlign: TextAlign.center,
										style: TextStyle(
											color: Colors.white,
											fontWeight: FontWeight.bold,
											fontSize: getProportionateScreenWidth(12)
										),
									),
								)
							),
						),
					],
				),
			),
		);
	}
}