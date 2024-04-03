import 'package:flutter/material.dart';
import 'package:studytech_apps/screen_page/Artikel_Materi.dart';
import 'package:studytech_apps/screen_page/page_contohsoal.dart';
import 'package:studytech_apps/screen_page/page_detail_homepage.dart';
import 'package:studytech_apps/screen_page/page_homepage.dart';
import 'package:studytech_apps/screen_page/page_homescreen.dart';
import 'package:studytech_apps/screen_page/page_notifikasi.dart';
import 'package:studytech_apps/screen_page/page_profil.dart';
import 'package:studytech_apps/screen_page/page_robotsoal.dart';
import 'package:studytech_apps/screen_page/page_soalterdeteksi.dart';
import 'package:studytech_apps/screen_page/splashscreen.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyTeach_apps',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/gambar/onboarding1.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: OnBoard(
              pageController: _pageController,
              onSkip: () {
                print('skipped');
              },
              onDone: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PageHomeScreen()), // Navigate to PageHomeScreen after onboarding is done
                );
              },
              onBoardData: onBoardData,
              titleStyles: const TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
              descriptionStyles: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              pageIndicatorStyle: const PageIndicatorStyle(
                width: 100,
                inactiveColor: Colors.white,
                activeColor: Colors.white,
                inactiveSize: Size(8, 8),
                activeSize: Size(12, 12),
              ),
              skipButton: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => PageHomeScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              nextButton: OnBoardConsumer(
                builder: (context, ref, child) {
                  final state = ref.watch(onBoardStateProvider);
                  return InkWell(
                    onTap: () => _onNextTap(context, state),
                    child: Container(
                      width: 230,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF7EC9F5), Color(0xFF3957ED)],
                        ),
                      ),
                      child: Text(
                        state.isLastPage ? "Selesai" : "Selanjutnya",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onNextTap(BuildContext context, OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PageHomeScreen(),
        ),
      );
    }
  }
}

final List<OnBoardModel> onBoardData = [
  OnBoardModel(
    title: 'Selamat Datang',
    description:
        'Saat kau terpuruk, percayalah bahwa ilmu yang sudah dipelajari akan berarti kemudian hari.',
    imgUrl: 'assets/gambar/StudyTeach.png',
  ),
  OnBoardModel(
    title: 'Selamat Datang',
    description:
        'Raihlah ilmu dan untuk meraih ilmu, belajarlah untuk tenang dan sabar.',
    imgUrl: 'assets/gambar/StudyTeach.png',
  ),
  OnBoardModel(
    title: 'Selamat Datang',
    description:
        'Saat dirimu menghadapi perubahan, percayalah ada yang selalu membantu.',
    imgUrl: 'assets/gambar/StudyTeach.png',
  ),
];

class Navigation extends StatefulWidget {
  final int initialIndex; // Tambahkan initialIndex
  const Navigation({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> screen = [
    const HomePage(),
    const PageArtikel_Materi(),
    const Pagenotifikasi(),
    const RobotSoal(),
    const PageProfile()
  ];

  @override
  void initState() {
    // Atur currentIndex sesuai dengan initialIndex saat inisialisasi
    _currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.book),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active_outlined),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.lightbulb_outline),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
