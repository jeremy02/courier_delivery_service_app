import 'package:courier_delivery_service_app/screens/splash/components/sign_in_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:courier_delivery_service_app/constants.dart';
import 'package:courier_delivery_service_app/size_config.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
	
	final _formKey = GlobalKey<FormState>();
	
	@override
	Widget build(BuildContext context) {
		
		// fill the entire screen
		// SystemChrome.setEnabledSystemUIOverlays([]);
		
		return SafeArea(
			child: SizedBox(
				width: double.infinity,
				child: Column(
					children: [
						Expanded(
							child: Padding(
								padding: EdgeInsets.only(
									top: 48.0,
									left: getProportionateScreenWidth(20),
									right: getProportionateScreenWidth(20),
								),
								child: SingleChildScrollView(
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											_buildTopLayout(),
											SizedBox(height: getProportionateScreenHeight(60)),
											SignInForm(
												formKey: _formKey
											),
										],
									),
								),
							),
						),
						Stack( // this is for the bottom layout
							children: [
								Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										buildForgotPasswordText(),
										Container(
											alignment: Alignment.bottomCenter,
											height: getProportionateScreenHeight(75),
											decoration: BoxDecoration(
												color: Color(0xFF4A3298).withOpacity(0.15)
											),
										),
									],
								),
								SignInButton(
									iconData: Icons.arrow_forward,
									press: () {
										if (_formKey.currentState.validate()) {
											print("_formKey"+_formKey.toString());
										}else{
											print("isinvalid _formKey"+_formKey.toString());
										}
									},
								),
							],
						),
					],
				),
			),
		);
	}
}

Wrap _buildTopLayout () {
	return Wrap(
		alignment: WrapAlignment.center,
		children: [
			Container(
				margin: EdgeInsets.symmetric(horizontal: 10.0),
				height: getProportionateScreenWidth(45),
				width: getProportionateScreenWidth(45),
				child: SvgPicture.asset(
					"assets/icons/courier_truck.svg"
				),
			),
			Row(
				mainAxisAlignment: MainAxisAlignment.center,
				children: [
					Text(
						"My",
						style: TextStyle(
							fontWeight: FontWeight.w500,
							color: kPrimaryColor,
							fontSize: 12.0
						),
					),
					SizedBox(width: 2.0,),
					Text(
						"Courier".toUpperCase(),
						style: TextStyle(
							fontWeight: FontWeight.bold,
							color: kPrimaryColor,
							fontSize: 12.0,
						),
					),
				],
			),
			SizedBox(
				height: 32.0,
			),
			Row(
				mainAxisAlignment: MainAxisAlignment.center,
				crossAxisAlignment: CrossAxisAlignment.end,
				children: [
					Text(
						"Welcome",
						style: TextStyle(
							fontSize: 26.0,
							fontWeight: FontWeight.bold,
							color: Colors.black,
						),
					),
					SizedBox(width: 4.0,),
					Text(
						"Back",
						style: TextStyle(
							fontWeight: FontWeight.bold,
							color: kTextColor,
							fontSize: 24.0,
						),
					),
				],
			),
		],
	);
}

Widget buildForgotPasswordText() {
	return Padding(
		padding: EdgeInsets.only(
			left: getProportionateScreenWidth(20),
			bottom: getProportionateScreenWidth(8),
		),
		child: GestureDetector(
			onTap: () => {},
			child: Text(
				"Forgot Password",
				style: TextStyle(
					fontWeight: FontWeight.bold,
					fontSize: getProportionateScreenWidth(12),
					decoration: TextDecoration.none,
					color: kPrimaryColor,
				),
			),
		),
	);
}

class SignInButton extends StatelessWidget {
	const SignInButton({
		Key key,
		this.iconData,
		this.press,
	}) : super(key: key);
	final IconData iconData;
	final Function press;
	
	@override
	Widget build(BuildContext context) {
		return Positioned(
			right: getProportionateScreenHeight(20),
			bottom: getProportionateScreenHeight(45),
			child: SizedBox(
				width: getProportionateScreenHeight(52),
				height: getProportionateScreenHeight(56),
				child: FlatButton(
					shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
					padding: EdgeInsets.all(10.0),
					color: kPrimaryColor.withOpacity(0.8),
					onPressed: press,
					child: Icon(
						iconData,
						color: Colors.white,
					),
				),
			),
		);
	}
}
