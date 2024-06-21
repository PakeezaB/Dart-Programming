// Base class Movie
class Movie {
  int id;
  String movieTitle;
  int numberOfDaysRented;

  // constructor
  Movie(this.id, this.movieTitle, this.numberOfDaysRented);

  // method to calculate late fees (it will be overridden)
  double calcLateFees(int daysLate) {
    return 0.0;
  }

  // equals method to check equality of movies
  bool equals(Movie m) {
    return this.id == m.id &&
        this.movieTitle == m.movieTitle &&
        this.numberOfDaysRented == m.numberOfDaysRented;
  }
}

class Action extends Movie {
  // constructor
  Action(int id, String movieTitle, int numberOfDaysRented)
      : super(id, movieTitle, numberOfDaysRented);

  // override calcLateFees method
  @override
  double calcLateFees(int daysLate) {
    return daysLate * 3.0; // late fee for Action movies: $3/day
  }
}

class Comedy extends Movie {
  // Constructor
  Comedy(int id, String movieTitle, int numberOfDaysRented)
      : super(id, movieTitle, numberOfDaysRented);

  // override calcLateFees method
  @override
  double calcLateFees(int daysLate) {
    return daysLate * 2.5; // late fee for Comedy movies: $2.50/day
  }
}

// Drama class extending Movie
class Drama extends Movie {
  // Constructor
  Drama(int id, String movieTitle, int numberOfDaysRented)
      : super(id, movieTitle, numberOfDaysRented);

  // Override calcLateFees method
  @override
  double calcLateFees(int daysLate) {
    return daysLate * 2.0; // late fee for Drama movies: $2.00/day
  }
}

void main() {
  //creating obj
  Movie actionMovie = Action(101, "abc Action movie", 5);
  Movie comedyMovie = Comedy(102, "abc comedy movie", 3);
  Movie dramaMovie = Drama(103, "abc drama movie", 7);

  print(
      "Late fee for ${actionMovie.movieTitle}: \$${actionMovie.calcLateFees(2).toStringAsFixed(2)}");
  print(
      "Late fee for ${comedyMovie.movieTitle}: \$${comedyMovie.calcLateFees(1).toStringAsFixed(2)}");
  print(
      "Late fee for ${dramaMovie.movieTitle}: \$${dramaMovie.calcLateFees(3).toStringAsFixed(2)}");

  // Type compatibility check using equals method
  Movie actionMovie2 = Action(101, "action movie 2", 5);
  Movie comedyMovie2 = Comedy(102, "comedy movie 2", 3);

  print("\nChecking using equals method:");
  print(
      "Are actionMovie and actionMovie2 equal? ${actionMovie.equals(actionMovie2)}");
  print(
      "Are actionMovie and comedyMovie2 equal? ${actionMovie.equals(comedyMovie2)}");
}
