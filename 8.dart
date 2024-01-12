class TrafficLight {
  String color;
  int duration;

  TrafficLight({required this.color, required this.duration});

  void changeColor(String newColor) {
    color = newColor;
    print('Traffic light changed to $newColor');
  }

  bool isRed() {
    return color == 'red';
  }

  bool isGreen() {
    return color == 'green';
  }
}

void main() {
  var trafficLight = TrafficLight(color: 'red', duration: 30);
  print('Initial color: ${trafficLight.color}');
  trafficLight.changeColor('green');

  print('Is the traffic light currently red? ${trafficLight.isRed()}');
  print('Is the traffic light currently green? ${trafficLight.isGreen()}');
}
