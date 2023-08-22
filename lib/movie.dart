class Movie {
  final String title;
  final String originalTitle;
  final String releaseDate;
  final String voteAverage;
  final String genres;
  final String overview;
  final String backdrop;

  Movie(
    this.title,
    this.originalTitle,
    this.releaseDate,
    this.voteAverage,
    this.genres,
    this.overview,
    this.backdrop,
  );

  factory Movie.mockMovie() {
    return Movie(
        'The Super Mario Bros. Movie',
        'The Super Mario Bros. Movie',
        '2023-04-05',
        '7.8',
        'Animation, Family, Adventure, Fantasy, Comedy',
        'While working underground to fix a water main, Brooklyn plumbers and brothers Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.',
        'assets/images/mariobros2.jpg');
  }
}
