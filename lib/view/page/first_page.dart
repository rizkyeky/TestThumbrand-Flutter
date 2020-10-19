part of 'page.dart';

class FirstPage extends Page<FirstBloc> {

  @override
  void dispose() {}

  @override
  void init() {}

  final List<Color> backgroundColors = [
    Colors.red, Colors.green, Colors.blue, Colors.grey, Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _bloc.notifierColorIndex,
      builder: (context, value, child) => Scaffold(
        backgroundColor: backgroundColors[value],
        appBar: XTopBar(
          backgroundColor: Colors.transparent,
          textTitle: 'ThumBrand Quotes',
          textStyle: whiteSubtitle.copyWith(fontWeight: FontWeight.bold),
        ),
        body: child, 
        floatingActionButton: FloatingActionButton(
          backgroundColor: xwhiteColor,
          onPressed: () => _bloc.refersh(),
          child: const Icon(Icons.refresh, color: xblackColor,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
        child: ValueListenableBuilder<Quote>(
          valueListenable: _bloc.notifierQuote,
          builder: (context, value, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(value.texts,
                textAlign: TextAlign.left,
                style: whiteSubtitle,
              ),
              const SizedBox(height: 16,),
              Text(value.author, 
                textAlign: TextAlign.center,
                style: whiteSubtitle.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}