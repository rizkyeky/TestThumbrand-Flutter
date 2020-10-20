part of 'page.dart';

class SecondPage extends Page<SecondBloc> {

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> datas = _bloc.getDataDummies();

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
              children: List.generate(
                datas.length, (index) => 
                  _MyCard(data: datas[index],)
              )
            )
          ],
        ),
      ),
    );
  }
}

class _MyCard extends StatelessWidget {

  final Map<String, dynamic> data;

  const _MyCard({
    this.data
  });

  @override
  Widget build(BuildContext context) {

    final List lsData = data.values.toList();

    return Stack(
      children: [
        Card(
          color: Colors.white,
          elevation: 1,
          margin: const EdgeInsets.fromLTRB(24, 24, 0, 24),
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
                              child: Text('${lsData[0]}',
                                textAlign: TextAlign.left,
                                style: blackSubtitle.copyWith(fontWeight: FontWeight.bold)
                              ),
                            )
                          ),
                          Text('\$${lsData[1]}\n${lsData[2]} month\n${lsData[3]}%', 
                            style: blackSubtitle
                          ),
                        ],
                      ),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: const Text('See More', style: blackSubtitle,),
                  )
                ]
              ),
            ),
          ),
        ),
        const Material(
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.all(Radius.circular(75)),
          elevation: 1,
          child: SizedBox(height: 150, width: 150,),
        )
      ]
    );
  }
}