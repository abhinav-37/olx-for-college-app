import 'package:flutter/material.dart';
import 'package:olx_iete/constants.dart';



class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.type,
    required this.validator,
    this.textInputAction = TextInputAction.done,
    this.suffix,
    this.controller,
    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,
    this.initialValue = "",
    this.hintText,
    this.label ,
    this.prefix,
  }) : super(key: key);

  final String? label;
  final String? Function(String?) validator;
  final TextInputType type;
  final Widget? suffix;
  final String? initialValue;
  final String? hintText;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputAction textInputAction;
  final Widget? prefix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      // autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      cursorColor: Colors.black,
      keyboardType: type,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      textAlign: TextAlign.start,
      onChanged: onChanged,
      onSaved: onSaved,
      initialValue: initialValue,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        hintText: hintText,
        label: Text(label ?? ""),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior : FloatingLabelBehavior.auto,
        floatingLabelStyle: const TextStyle(
          color: CustomColors.orangeColor,
          fontSize: 20,
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w200,
          
        ),
        prefixIconColor: CustomColors.orangeColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: CustomColors.orangeColor,
            width: 3,
          ),
        ),
      ),
    );
  }
}
