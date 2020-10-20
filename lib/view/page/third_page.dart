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
            PieChart(
              PieChartData(
                centerSpaceRadius: 0,
                sectionsSpace: 0,
                sections: _pieChartData(),
                borderData: FlBorderData(
                  show: false,
                ),
              )
            ),
            const SizedBox(height: 24),
            Center(
              child: BarChart(
                _barChartData(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _pieChartData() {

    final Map<String, int> pie = _bloc.getPieFromService();
    
    final List<Color> colors = List.generate(pie.length, (index) => 
      xmainColor.withOpacity(1 - (index*0.25)));
    
    return List.generate(pie.length,
      (i) => PieChartSectionData(
        color: colors[i],
        value: pie.values.toList()[i].toDouble(),
        radius: (120 - ((i+1)*5)).toDouble(),
        title: pie.keys.toList()[i],
      )
    );
  }

  BarChartData _barChartData() {

    final Map<String, Map<String, int>> bar = _bloc.getBarFromService();
    
    final List<Color> colors = [xmainColor, xmainColor.withOpacity(0.5)];

    return BarChartData(
      backgroundColor: Colors.grey,
      alignment: BarChartAlignment.spaceAround,
      barGroups: List.generate(bar.length, (index) {
        
        final Map<String, int> data = bar.values.toList()[index];

        return BarChartGroupData(
        x: index,
        barRods: [
            BarChartRodData(y: data['plus'].toDouble(), colors: colors),
            BarChartRodData(y: data['minus'].toDouble(), colors: colors.reversed.toList())
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
            bar.keys.toList()[value.toInt()].substring(0,3),
        ),
        leftTitles: SideTitles(showTitles: false),
      ),
      borderData: FlBorderData(
        show: false,
      ),
    );
  }
}