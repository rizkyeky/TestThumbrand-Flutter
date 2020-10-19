part of 'page.dart';

class SecondPage extends Page<SecondBloc> {

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void init() {
    // TODO: implement init
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XTopBar(
        backgroundColor: Colors.transparent,
        textTitle: 'Search',
        textStyle: blackTitle,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text('What would you like to search ?', 
              style: blackTitle.copyWith(fontSize: 30),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16,),
            const XTextField(
              prefixIcon: Icon(Icons.search),
            ),
            const Divider(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 1,
                      margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.expand(height: 250),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  const SizedBox(height: 120, width: 150,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: 150,
                                        child: Align(
                                          child: Text('THUMBRAND SERVICE',
                                            textAlign: TextAlign.left,
                                            style: blackSubtitle.copyWith(fontWeight: FontWeight.bold)
                                          ),
                                        )
                                      ),
                                      // const SizedBox(height: 50,),
                                      Text('\$300\n3 month\n100%', style: blackSubtitle),
                                    ],
                                  ),
                                ],
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text('See More', style: blackSubtitle,),
                              )
                            ]
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Material(
                          color: Colors.white,
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.all(Radius.circular(75)),
                          elevation: 1,
                          child: SizedBox(height: 150, width: 150,),
                        ),
                        
                      ],
                    )
                  ]
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}