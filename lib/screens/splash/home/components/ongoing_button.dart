import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class OngoingButton extends StatelessWidget {
	final Color bgColor;
	final Color textColor;
	final String btnText;
	
	const OngoingButton({
		Key key,
		this.bgColor,
		this.textColor,
		this.btnText,
	}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Container(
			padding: EdgeInsets.all(7.5),
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(4.0),
				color: bgColor,
			),
			child: Text(
				btnText,
				textAlign: TextAlign.center,
				style: TextStyle(
					color: textColor,
					fontWeight: FontWeight.bold,
					fontSize: getProportionateScreenWidth(11)
				),
			),
		);
	}
}