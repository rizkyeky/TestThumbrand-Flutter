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
    automaticallyImplyLeading: false,
    backgroundColor: backgroundColor ?? xwhiteColor,
    centerTitle: true,
    elevation: 0,
    title: Text(textTitle, style: textStyle ?? blackSubtitle),
    leading: leading,
    bottom: isLoading ? XTopLinearProgressIndicator(stream: isLoadingStream,) : null
  );
}