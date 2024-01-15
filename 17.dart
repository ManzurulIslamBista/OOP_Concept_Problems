class Movie {
  String movie;
  String director;
  String actors;
  String reviews;

  Movie(this.movie, this.director, this.actors, this.reviews);
}

class MovieList {
  List<Movie> movies = [];

  MovieList.add_movie(Movie mv) {
    movies.add(mv);
  }

  void get_reviews(String movie_name) {
    movies.forEach((movie) {
      if (movie.movie == movie_name) {
        print("Review : ${movie.reviews}");
      }
    });
  }
}

void main() {
  Movie mv = Movie("12th Fail", "Sanjay Khanna", "Rafiul Islam", "Good");
  MovieList ml = MovieList.add_movie(mv);
  ml.get_reviews("12th Fail");
}
