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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('What would you like to search ?', 
              style: blackTitle.copyWith(fontSize: 30),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 16,),
            XTextField(
              prefixIcon: Icon(Icons.search),
            ),
            Divider(height: 32, thickness: 2,)
          ],
        ),
      ),
    );
  }
}