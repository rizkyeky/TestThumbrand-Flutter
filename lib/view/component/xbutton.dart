part of 'component.dart';


class XButton extends StatelessWidget {
  
  final VoidCallback onTap;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final bool isBorder;
  final Color borderColor;

  const XButton({
    Key key,
    @required this.child,
    @required this.onTap,
    this.color,
    this.width,
    this.height,
    this.borderColor,
    this.isBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
        clipBehavior: Clip.antiAlias,
        type: MaterialType.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: isBorder 
            ? BorderSide(color: borderColor ?? Theme.of(context).dividerColor, width: 3) 
            : BorderSide.none
        ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(
            width: width ?? 240,
            height: height ?? 40
          ),
          child: child,
        ),
      ),
    );
  }
}