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
      backgroundColor: xwhiteColor,
      appBar: XTopBar(
        backgroundColor: Colors.transparent,
        textTitle: 'Search',
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back, color: xblackColor), 
        //   onPressed: () {}
        // ),
        textStyle: blackTitle,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
              children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Card(
                      child: Container(height: 200, margin: EdgeInsets.symmetric(horizontal: 30),),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Material(
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              elevation: 10,
                              child: Container(height: 100, width: 100,),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text('THUMBRAND SERVICE',
                                textAlign: TextAlign.left,
                                style: blackSubtitle.copyWith(fontWeight: FontWeight.bold)
                              )
                            ),
                          ],
                        ),
                        const SizedBox(height: 50,),
                          Text('\$300\n3mo.\n100%',
                            textAlign: TextAlign.left,
                            style: blackSubtitle.copyWith(fontWeight: FontWeight.bold)),
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