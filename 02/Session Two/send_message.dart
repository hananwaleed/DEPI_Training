/*
Create a function sendMessage that:
- Has a required parameter: String message
- Has an optional named parameter bool urgent (default: false)
- Prints "Sending urgent message: ..." or "Sending message: ..." based on the flag.
*/

void main() {
  sendMessage(message: "Hello, how are you?");
  sendMessage(message: "This is very important!", urgent: true);
}

void sendMessage({required String message, bool urgent = false}) {
  if (urgent) {
    print("Sending urgent message: $message");
  } else {
    print("Sending message: $message");
  }
}
