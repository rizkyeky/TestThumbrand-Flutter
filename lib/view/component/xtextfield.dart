part of 'component.dart';

class XTextField extends StatelessWidget {

  final String text;
  final TextEditingController controller;
  final bool obscureText;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final void Function(String) onChanged;
  final TextInputType keyboardType;

  const XTextField({ 
  Key key,
  this.text,
  this.controller,
  this.obscureText,
  this.suffixIcon,
  this.prefixIcon,
  this.onChanged,
  this.keyboardType
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: TextField(
        keyboardType: keyboardType ?? TextInputType.text,
        onChanged: onChanged ?? (value) {},
        obscureText: obscureText ?? false,
        controller: controller,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: blackSubtitle,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          // isDense: true,
          border: const UnderlineInputBorder(
            borderSide: BorderSide.none,
          )
        ),
      ),
    );
  }
}