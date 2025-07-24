enum TrafficLight { Red, Yellow, Green }

void main() {
  TrafficLight current = TrafficLight.Red;

  switch (current) {
    case TrafficLight.Red:
      print("Stop! The light is RED.");
      break;
    case TrafficLight.Yellow:
      print("Get ready! The light is YELLOW.");
      break;
    case TrafficLight.Green:
      print("Go! The light is GREEN.");
      break;
  }
}
