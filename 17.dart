class Movie {
  String title;
  String director;
  List<String> actors;
  List<String> reviews;

  Movie(this.title, this.director, this.actors, this.reviews);

  void addReview(String review) {
    reviews.add(review);
    print("Review added: $review");
  }

  List<String> getReviews() {
    return reviews.isEmpty ? ["No reviews available."] : List.from(reviews);
  }

  void displayMovieDetails() {
    print("\nMovie details:");
    print("Title: $title");
    print("Director: $director");
    print("Actors: ${actors}");
    print("Reviews: ${getReviews()}");
  }
}

void main() {
  Movie myMovie =
      Movie("Inception", "Christopher Nolan", ["Leonardo DiCaprio"], ["good"]);

  myMovie.addReview("Amazing movie !");
  myMovie.addReview("outstanding.");

  myMovie.displayMovieDetails();
}
