class Airplane {
  String? flightNumber;
  String? destination;
  DateTime? departureTime;
  bool? isDelayed;

  Airplane(String flightNumber, String destination, DateTime departureTime) {
    this.flightNumber = flightNumber;
    this.destination = destination;
    this.departureTime = departureTime;
    this.isDelayed = false;
  }

  void checkFlightStatus() {
    if (isDelayed!) {
      print("Flight $flightNumber to $destination is currently delayed.");
    } else {
      print("Flight $flightNumber to $destination is on time.");
    }
  }

  void delayFlight() {
    if (!isDelayed!) {
      isDelayed = true;
      print("Flight $flightNumber to $destination has been delayed.");
    } else {
      print("Flight $flightNumber to $destination is already delayed.");
    }
  }
}

void main() {
  Airplane flight1 =
      Airplane("FL123", "New York", DateTime(2024, 1, 20, 12, 30));

  flight1.checkFlightStatus();
  flight1.delayFlight();
  flight1.checkFlightStatus();
}
