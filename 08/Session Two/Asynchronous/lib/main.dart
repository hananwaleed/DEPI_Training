
// Example 1: Wrong usage (sync vs async)
// ------------------------------
String createOrderMessageWrong() {
  var order = fetchUserOrderWrong();
  return 'Your order is: $order';
}

Future<String> fetchUserOrderWrong() =>
    Future.delayed(const Duration(seconds: 2), () => 'Large Latte');

// ------------------------------
// Example 2: Future<void> - just delay with print
// ------------------------------
Future<void> fetchUserOrderVoid() {
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

// ------------------------------
// Example 3: Future with error
// ------------------------------
Future<void> fetchUserOrderError() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => throw Exception('Logout failed: user ID is invalid'),
  );
}

// ------------------------------
// Example 4: Correct usage with async/await
// ------------------------------
Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 2), () => 'Large Latte');

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

// ------------------------------
// Example 5: Execution flow with async/await
// ------------------------------
Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrderDelay();
  print('Your order is: $order');
}

Future<String> fetchUserOrderDelay() {
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}

// ------------------------------
// Example 6: async/await with try-catch
// ------------------------------
Future<void> printOrderMessageTryCatch() async {
  try {
    print('Awaiting user order...');
    var order = await fetchUserOrderWithError();
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> fetchUserOrderWithError() {
  return Future.delayed(
    const Duration(seconds: 4),
    () => throw 'Cannot locate user order',
  );
}

// ------------------------------
// Example 7: then() and catchError()
// ------------------------------
Future<String> myFunc() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Hello from Future',
  );
}

void usingThenAndCatchError() {
  myFunc()
      .then((value) {
        print('Value received: $value');
        throw Exception('Some arbitrary error');
      })
      .catchError((error) {
        print('Caught error: $error');
      });
}

// ------------------------------
// ------------------------------
Future<void> main() async {
  print('--- Example 1: Wrong usage ---');
  print(createOrderMessageWrong());

  print('\n--- Example 2: Future<void> ---');
  await fetchUserOrderVoid();

  print('\n--- Example 3: Future with error ---');
  try {
    await fetchUserOrderError();
  } catch (e) {
    print('Error: $e');
  }

  print('\n--- Example 4: Correct usage async/await ---');
  print(await createOrderMessage());

  print('\n--- Example 5: Execution flow ---');
  countSeconds(4);
  await printOrderMessage();

  print('\n--- Example 6: async/await with try-catch ---');
  await printOrderMessageTryCatch();

  print('\n--- Example 7: then() and catchError ---');
  usingThenAndCatchError();
}
