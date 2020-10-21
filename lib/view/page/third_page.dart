part of 'page.dart';

class ThirdPage extends Page<ThirdBloc> {

  @override
  void dispose() {}

  @override
  void init() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XTopBar(
        backgroundColor: Colors.transparent,
        textTitle: 'Graph',
        textStyle: blackTitle,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            StreamBuilder<Map<String, int>>(
              initialData: _bloc.getPieFromService(),
              stream: _bloc.streamPieFromService(),
              builder: (context, snapshot) => PieChart(
                  PieChartData(
                    centerSpaceRadius: 0,
                    sectionsSpace: 0,
                    sections: _pieChartData(snapshot.data),
                    borderData: FlBorderData(
                      show: false,
                    ),
                  )
                )
            ),
            const SizedBox(height: 24),
            StreamBuilder<Map<String, Map<String, int>>>(
              initialData: _bloc.getBarFromService(),
              stream: _bloc.streamBarFromService(),
              builder: (context, snapshot) {
                return BarChart(
                  _barChartData(snapshot.data),
                );
              }
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _pieChartData(Map<String, int> data) {
  
    final List<Color> colors = List.generate(data.length, (index) => 
      xmainColor.withOpacity(1 - (index*0.25)));
    
    return List.generate(data.length,
      (i) => PieChartSectionData(
        color: colors[i],
        value: data.values.toList()[i].toDouble(),
        radius: (120 - ((i+1)*5)).toDouble(),
        title: data.keys.toList()[i],
      )
    );
  }

  BarChartData _barChartData(Map<String, Map<String, int>> data) {

    final List<Color> colors = [xmainColor, xmainColor.withOpacity(0.5)];

    return BarChartData(
      alignment: BarChartAlignment.spaceAround,
      barGroups: List.generate(data.length, (index) {
        
        final Map<String, int> values = data.values.toList()[index];

        return BarChartGroupData(
        x: index,
        barRods: [
            BarChartRodData(y: values['plus'].toDouble(), colors: colors),
            BarChartRodData(y: values['minus'].toDouble(), colors: colors.reversed.toList())
          ],
        );
      }),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => blackSubtitle,
          margin: 4,
          getTitles: (double value) => 
            data.keys.toList()[value.toInt()].substring(0,3),
        ),
        leftTitles: SideTitles(showTitles: false),
      ),
      borderData: FlBorderData(
        show: false,
      ),
    );
  }
}