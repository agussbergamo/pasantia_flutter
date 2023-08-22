import 'detail_rich_text.dart';
import 'ui_constants.dart';
import 'package:flutter/material.dart';
import 'movie.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _counter = 0;
  final Movie movie = Movie.mockMovie();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIConstants.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image(
                  image: AssetImage(
                    movie.backdrop,
                  ),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        movie.title,
                        style: UIConstants.title,
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white70),
                          ),
                          child: const Padding(
                            padding: UIConstants.paddingPlayButton,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.white70,
                                ),
                                Text('Play trailer', style: UIConstants.text),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.outlined(
                                onPressed: _incrementCounter,
                                icon: const Icon(Icons.favorite,
                                    color: Colors.white70)),
                            Text(
                              '$_counter',
                              style: UIConstants.text,
                            ),
                          ],
                        ),
                      ],
                    ),
                    UIConstants.sectionSpace,
                    const Text(
                      'Overview',
                      style: UIConstants.subtitle,
                    ),
                    Text(
                      movie.overview,
                      style: UIConstants.text,
                    ),
                    UIConstants.sectionSpace,
                    Column(
                      children: [
                        DetailRichText(
                          subtitle: 'Original title: ',
                          text: movie.originalTitle,
                        ),
                        UIConstants.lineSpace,
                        DetailRichText(
                          subtitle: 'Release date: ',
                          text: movie.releaseDate,
                        ),
                        UIConstants.lineSpace,
                        DetailRichText(
                          subtitle: 'Vote average: ',
                          text: movie.voteAverage,
                        ),
                        UIConstants.lineSpace,
                        DetailRichText(
                          subtitle: 'Genres: ',
                          text: movie.genres,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
