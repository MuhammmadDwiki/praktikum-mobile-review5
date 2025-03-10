import 'package:flutter/material.dart';
import 'package:pertemuan6/pages/homepage.dart';
import 'package:introduction_screen/introduction_screen.dart';

// import 'snackbar_page.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      next: const Text("Selanjutnya"),
      done: const Text("Selesai"),
      onDone: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ThemeScreen();
            },
          ),
        );
      },
      pages: [
        PageViewModel(
          title: "The First Page",
          body: "Number 1",
          image: Image.network("https://picsum.photos/800/500"),
        ),
        PageViewModel(
          title: "The Second Page",
          body: "Number 2",
          image: Image.network("https://picsum.photos/800/600"),
        ),
        PageViewModel(
          title: "The Third Page",
          body: "Number 3",
          image: Image.network("https://picsum.photos/900/700"),
        ),
        PageViewModel(
          title: "The Fourth Page",
          body: "Number 4",
          image: Image.network("https://picsum.photos/900/700"),
        ),
      ],
    );
  }
}
