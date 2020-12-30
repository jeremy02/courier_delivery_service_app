import 'package:flutter/material.dart';
import 'package:courier_delivery_service_app/constants.dart';
import 'package:courier_delivery_service_app/size_config.dart';

import 'form_error.dart';

class SignInForm extends StatefulWidget {
	final Key formKey;
	
	SignInForm({
		Key key,
		@required this.formKey
	}) : super(key: key);
	
	@override
	_SignInFormState createState() => _SignInFormState(formKey);
}

class _SignInFormState extends State<SignInForm> {
	
	 Key formKey;
	 _SignInFormState(this.formKey);
	 
	String email;
	String password;
	bool remember = false;
	final List<String> errors = [];
	
	void addError({String error}) {
		if (!errors.contains(error))
			setState(() {
				errors.add(error);
			});
	}
	
	void removeError({String error}) {
		if (errors.contains(error))
			setState(() {
				errors.remove(error);
			});
	}
	
	@override
	void initState() {
		super.initState();
		print("_formKey" + this.formKey.toString());
	}
	
	@override
	Widget build(BuildContext context) {
		return Form(
			key: this.formKey,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Text(
						"please login to your acccount",
						style: TextStyle(
							color: Colors.black,
							fontSize: 12
						),
						textAlign: TextAlign.start,
					),
					SizedBox(height: getProportionateScreenHeight(20)),
					buildFormFields(false),
					SizedBox(height: getProportionateScreenHeight(20)),
					buildFormFields(true),
					SizedBox(height: getProportionateScreenHeight(4)),
					FormError(errors: errors),
				],
			),
		);
	}
	
	Container buildFormFields(isPassword) {
		return Container(
			padding: EdgeInsets.symmetric(
				horizontal: 8.0
			),
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10),
				border: Border.all(
					color: Colors.grey,
					width: 0.5,
				)
			),
			child: Row(
				children: [
					Icon(
						isPassword ? Icons.lock : Icons.email_outlined,
						color: kPrimaryColor,
						size: 24,
					),
					Container(
						padding: const EdgeInsets.symmetric(
							vertical: 10.0,
							horizontal: 4.0
						),
						width: 12.0,
						decoration: BoxDecoration(
							border: Border(
								right: BorderSide(
									width: 2.0,
									color: kPrimaryColor,
								)
							)
						),
					),
					Expanded(
						child: isPassword ? _buildPasswordField() :_buildEmailAddressField(),
					)
				],
			)
		);
	}
	
	TextFormField _buildEmailAddressField() {
		return TextFormField(
			keyboardType: TextInputType.emailAddress,
			onSaved: (newValue) => email = newValue,
			onChanged: (value) {
				if (value.isNotEmpty) {
					removeError(error: kEmailNullError);
				} else if (emailValidatorRegExp.hasMatch(value)) {
					removeError(error: kInvalidEmailError);
				}
				return null;
			},
			validator: (value) {
				if (value.isEmpty) {
					addError(error: kEmailNullError);
					return null; // you can return "" too
				} else if (!emailValidatorRegExp.hasMatch(value)) {
					addError(error: kInvalidEmailError);
					return null; // you can return "" too
				}
				return null;
			},
			decoration: InputDecoration(
				hintStyle: TextStyle(
					fontSize: 16,
					color: kTextColor
				),
				hintText: 'Email Address',
				border: InputBorder.none,
				focusedBorder: InputBorder.none,
				enabledBorder: InputBorder.none,
				contentPadding: EdgeInsets.all(12.0),
			),
			style: TextStyle(decoration: TextDecoration.none),
		);
	}
	
	TextFormField _buildPasswordField() {
		return TextFormField(
			obscureText: true,
			onSaved: (newValue) => password = newValue,
			onChanged: (value) {
				if (value.isNotEmpty) {
					removeError(error: kPassNullError);
				} else if (value.length >= 8) {
					removeError(error: kShortPassError);
				}
				return null;
			},
			validator: (value) {
				if (value.isEmpty) {
					addError(error: kPassNullError);
					return null; // you can return "" too
				} else if (value.length < 8) {
					addError(error: kShortPassError);
					return null; // you can return "" too
				}
				return null;
			},
			decoration: InputDecoration(
				hintStyle: TextStyle(
					fontSize: 16,
					color: kTextColor
				),
				hintText: 'Password',
				border: InputBorder.none,
				focusedBorder: InputBorder.none,
				enabledBorder: InputBorder.none,
				contentPadding: EdgeInsets.all(12.0),
				suffixIcon: Icon(
					Icons.remove_red_eye_outlined,
					color: kPrimaryColor,
				),
			),
			style: TextStyle(decoration: TextDecoration.none),
		);
	}
}
