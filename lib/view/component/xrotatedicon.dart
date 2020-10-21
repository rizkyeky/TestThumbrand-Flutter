part of 'component.dart';

class XRotatedIcon extends StatefulWidget {

  final Icon icon;
  final int duration;

  const XRotatedIcon({
    Key key,
    this.icon,
    this.duration,
  }) : super(key: key);

  @override
  _XAnimatedIconState createState() => _XAnimatedIconState();
}

class _XAnimatedIconState extends State<XRotatedIcon> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {  
    return RotationTransition(
      turns: CurvedAnimation(
        parent:  AnimationController(
          duration: Duration(seconds: widget.duration ?? 2),
          vsync: this,
        )..forward(),
        curve: Curves.easeOut,
      ),
      child: widget.icon,
    );
  }
}