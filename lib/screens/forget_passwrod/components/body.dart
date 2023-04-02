import 'package:flutter/material.dart';
import 'package:shopping_app/components/default_button.dart';
import 'package:shopping_app/components/no_account_text.dart';
import 'package:shopping_app/size_config.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/components/custom_svg_icon.dart';
import 'package:shopping_app/components/form_error.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will sen \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              ForgetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> error = [];
  late String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue.toString(),
          onChanged: (value){
            if (value.toString().isNotEmpty && error.contains(kEmailNullError)){
              setState(() {
                error.remove(kEmailNullError);
              });
            }else if(emailValidatorRegExp.hasMatch(value.toString()) && error.contains(kInvalidEmailError)){
              setState(() {
                error.remove(kInvalidEmailError);
              });
            }
            return null;
          },
          validator: (value){
            if (value.toString().isEmpty && !error.contains(kEmailNullError)){
              setState(() {
                error.add(kEmailNullError);
              });
            }else if(!emailValidatorRegExp.hasMatch(value.toString()) && !error.contains(kInvalidEmailError)){
              setState(() {
                error.add(kInvalidEmailError);
              });
            }
            return null;
          },
          decoration:  InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30),),
        FormError(error: error),
        SizedBox(height: SizeConfig.screenHeight*0.1,),
        DefaultButton(text: "Continue", 
        press: (){
          if(_formKey.currentState!.validate()){

            _formKey.currentState!.save();
          }
        },
        ),
        SizedBox(height: SizeConfig.screenHeight*0.1,),
        NoaccountText(),
        ],
      ),
    );
  }
}