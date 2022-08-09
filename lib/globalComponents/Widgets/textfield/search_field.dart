import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/color/app_color.dart';

class SearchTextField extends StatelessWidget {
  final String lable;
  final String hintText;
  final bool readOnly;

  SearchTextField(
      {required this.lable,
      required this.controller,
      required this.hintText,
      required this.readOnly});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fillup';
        }
        return null;
      },
      readOnly: readOnly,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SvgPicture.asset(
            'assets/images/search.svg',
          ),
        ),
        hintText: hintText,
        labelText: lable,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide.none,
        ),
        fillColor: searchColor.withOpacity(0.8),
        filled: true,
      ),
    );
  }
}
