part of 'page.dart';

class MainPage extends StatelessWidget {
  
  final FirstPage firstPage = FirstPage();
  final SecondPage secondPage = SecondPage();
  final ThirdPage thirdPage = ThirdPage();

  final List<Widget> pages = [];

  final ValueNotifier<int> setTab = ValueNotifier(0);

  MainPage({
    Key key,
  }) : super(key: key) {
    pages.addAll([firstPage, secondPage, thirdPage]);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: setTab, 
        builder: (context, value, child) => pages[value]
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: setTab,
        builder: (context, value, child) => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger, color: Colors.grey), label: 'Qoutes',
              activeIcon: Icon(Icons.messenger, color: xblackColor,)
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: Colors.grey), label: 'Explore',
              activeIcon: Icon(Icons.explore, color: xblackColor,)
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart, color: Colors.grey), label: 'Graph',
              activeIcon: Icon(Icons.bar_chart, color: xblackColor,)
              ),
            
          ],
          onTap: (index) {
            if (setTab.value != index) {
              setTab.value = index;
            }
          },
        ),
      ),
    );
  }

}