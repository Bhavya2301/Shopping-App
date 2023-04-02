import 'package:flutter/material.dart';
import 'package:shopping_app/components/default_button.dart';
import 'package:shopping_app/components/form_error.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/otp/otp_screen.dart';
import 'package:shopping_app/size_config.dart';
import 'package:shopping_app/components/custom_svg_icon.dart';


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formkey = GlobalKey<FormState>();
  late String firstName;
  late String lastName;
  late String phoneNumbers;
  late String address;
  final List<String> errors=[];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildAddressFormField(),
          FormError(error: errors),
          SizedBox(height: getProportionateScreenHeight(40),),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formkey.currentState!.validate()){
                //Go to OTP Screen
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
          onSaved: (newValue) => address = newValue.toString(),
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kAddressNullError);
            } 
            return null;
          },
          validator: (value) {
            if (value.toString().isEmpty) {
              addError(error: kAddressNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Address",
            hintText: "Enter your Address",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
          ),
        );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
          keyboardType: TextInputType.number,
          onSaved: (newValue) => phoneNumbers = newValue.toString(),
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kPhoneNumberNullError);
            } 
            return null;
          },
          validator: (value) {
            if (value.toString().isEmpty) {
              addError(error: kPhoneNumberNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Phone Number",
            hintText: "Enter your phone number",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
          ),
        );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
          onSaved: (newValue) => lastName = newValue.toString(),
          decoration: InputDecoration(
            labelText: "Last Name",
            hintText: "Enter your last name",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
          ),
        );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
          onSaved: (newValue) => firstName = newValue.toString(),
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kNamelNullError);
            } 
            return null;
          },
          validator: (value) {
            if (value.toString().isEmpty) {
              addError(error: kNamelNullError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "First Name",
            hintText: "Enter your first name",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
          ),
        );
  }
}