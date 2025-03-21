import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.fem,
    required this.ffem,
    required this.fieldName,
    required this.placeholder,
    this.defaultValue,
  });

  final double fem;
  final double ffem;
  final String fieldName;
  final String placeholder;
  final String? defaultValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            fieldName,
            style: safeGoogleFont(
              'Noto Sans',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.4285714286 * ffem / fem,
              letterSpacing: 0.0140000002 * fem,
              color: Color(0xbf000000),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        if (defaultValue == null)
          SizedBox(
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffaeaeae)),
                    borderRadius: BorderRadius.circular(8)),
                hintText: placeholder,
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
          ),
        if (defaultValue != null)
          SizedBox(
            height: 50,
            child: TextFormField(
              initialValue: defaultValue,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffaeaeae)),
                    borderRadius: BorderRadius.circular(8)),
                hintText: placeholder,
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
          )
      ],
    );
  }
}

class PasswordFieldWidget extends StatelessWidget {
  const PasswordFieldWidget({
    super.key,
    required this.fem,
    required this.ffem,
    required this.fieldName,
    required this.placeholder,
  });

  final double fem;
  final double ffem;
  final String fieldName;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            fieldName,
            style: safeGoogleFont(
              'Noto Sans',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.4285714286 * ffem / fem,
              letterSpacing: 0.0140000002 * fem,
              color: const Color(0xbf000000),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Color(0xffaeaeae)),
                  borderRadius: BorderRadius.circular(8)),
              hintText: placeholder,
              hintStyle: TextStyle(fontSize: 14),
            ),
          ),
        )
      ],
    );
  }
}

class NumberFieldWidget extends StatelessWidget {
  const NumberFieldWidget(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.fieldName,
      required this.placeholder,
      this.defaultValue});

  final double fem;
  final double ffem;
  final String fieldName;
  final String placeholder;
  final String? defaultValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            fieldName,
            style: safeGoogleFont(
              'Noto Sans',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.4285714286 * ffem / fem,
              letterSpacing: 0.0140000002 * fem,
              color: Color(0xbf000000),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        if (defaultValue == null)
          SizedBox(
            height: 50,
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffaeaeae)),
                    borderRadius: BorderRadius.circular(8)),
                hintText: placeholder,
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
          ),
        if (defaultValue != null)
          SizedBox(
            height: 50,
            child: TextFormField(
              initialValue: defaultValue,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color(0xffaeaeae)),
                    borderRadius: BorderRadius.circular(8)),
                hintText: placeholder,
                hintStyle: TextStyle(fontSize: 14),
              ),
            ),
          )
      ],
    );
  }
}
