class TravelReservationSystem {
  List<Flight> Flights = [];
  List<Hotel> Hotels = [];

  void searchFlights() {
    print('Available Flights:');
    for (var flight in Flights) {
      print('- ${flight.name}');
    }
  }

  void searchHotels() {
    print('Available Hotels:');
    for (var hotel in Hotels) {
      print('- ${hotel.name}');
    }
  }

  void bookFlight(String selectedFlightName) {
    Flights.forEach((flight) {
      if (flight.name == selectedFlightName) {
        if (flight.available) {
          flight.available = false;
          print("'${flight.name}' is Booked");
        } else {
          print("'${flight.name}' is not Available");
        }
      }
    });
  }

  void bookHotel(String selectedHotelName) {
    Hotels.forEach((hotel) {
      if (hotel.name == selectedHotelName) {
        if (hotel.available) {
          hotel.available = false;
          print("'${hotel.name}' is Booked");
        } else {
          print("'${hotel.name}' is not Available");
        }
      }
    });
  }

  void cancelFlight(String bookedFlightName) {
    Flights.forEach((flight) {
      if (flight.name == bookedFlightName) {
        if (!flight.available) {
          flight.available = true;
          print("'${flight.name}' is Canceled");
        } else {
          print("'${flight.name}' is Available");
        }
      }
    });
  }

  void cancelHotel(String bookedHotelName) {
    Hotels.forEach((hotel) {
      if (hotel.name == bookedHotelName) {
        if (!hotel.available) {
          hotel.available = true;
          print("'${hotel.name}' is Canceled");
        } else {
          print("'${hotel.name}' is Available");
        }
      }
    });
  }
}

class Flight {
  String name;
  bool available;

  Flight(this.name, this.available);
}

class Hotel {
  String name;
  bool available;

  Hotel(this.name, this.available);
}

void main() {
  var travelSystem = TravelReservationSystem();

  travelSystem.Flights.add(Flight('Flight 1', true));
  travelSystem.Flights.add(Flight('Flight 2', true));
  travelSystem.Flights.add(Flight('Flight 3', true));

  travelSystem.Hotels.add(Hotel('Hotel A', true));
  travelSystem.Hotels.add(Hotel('Hotel B', true));
  travelSystem.Hotels.add(Hotel('Hotel C', true));

  travelSystem.searchFlights();
  travelSystem.searchHotels();

  travelSystem.bookFlight('Flight 1');
  travelSystem.bookHotel('Hotel A');

  travelSystem.cancelFlight('Flight 1');
  travelSystem.cancelHotel('Hotel A');
}
