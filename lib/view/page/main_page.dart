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
    int prevTab = setTab.value;
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: setTab, 
        builder: (context, value, _) {
          return PageTransitionSwitcher(
          reverse: value > prevTab,
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) => 
            SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            ),
          child: pages[value]
        );
        }
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: setTab,
        builder: (context, value, child) => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: value,
          selectedIconTheme: const IconThemeData(size: 28, color: xblackColor),
          unselectedIconTheme: const IconThemeData(size: 24, color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline), label: 'Qoutes',
              activeIcon: Icon(Icons.messenger)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: 'Explore',
              activeIcon: Icon(Icons.explore)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded), label: 'Graph',
              activeIcon: Icon(Icons.assessment)
            ),
          ],
          onTap: (index) {
            if (setTab.value != index) {
              prevTab = setTab.value;
              setTab.value = index;
            }
          },
        ),
      ),
    );
  }

}