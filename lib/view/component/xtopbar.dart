part of 'component.dart';

class XTopBar extends AppBar {
  
  XTopBar({
    Key key,
    String textTitle,
    Widget leading,
    Color backgroundColor,
    TextStyle textStyle,
    bool isLoading = false,
    Stream<bool> isLoadingStream  
  }) : super(
    key: key,
    backgroundColor: backgroundColor ?? xwhiteColor,
    centerTitle: true,
    elevation: 0,
    title: Text(textTitle, style: textStyle ?? blueTitle,),
    leading: leading,
    bottom: isLoading ? XTopLinearProgressIndicator(stream: isLoadingStream,) : null
  );
}