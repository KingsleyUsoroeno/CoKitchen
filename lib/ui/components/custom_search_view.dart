import 'package:cokitchen_assessment/ui/theme/text_style.dart';
import 'package:cokitchen_assessment/utils/image_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchView extends StatelessWidget {
  final Function(String query) showSearchCallback;
  final TextEditingController _textEditingController = TextEditingController();
  final String hint;
  final bool enabledOnTextChange;

  CustomSearchView({this.showSearchCallback, this.hint = "Search...", this.enabledOnTextChange = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 45.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFF3F4F6),
      ),
      child: TextFormField(
        controller: _textEditingController,
        maxLines: 1,
        autofocus: false,
        inputFormatters: [LengthLimitingTextInputFormatter(30)],
        onChanged: (String query) => enabledOnTextChange ? showSearchCallback(query) : null,
        decoration: InputDecoration(
            hintText: hint,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset(ImageUtil.ic_search),
            ),
            hintStyle: normalTextStyle.copyWith(color: Colors.grey[500], fontWeight: FontWeight.w500)),
        style: normalTextStyle.copyWith(color: Colors.black),
      ),
    );
  }
}
