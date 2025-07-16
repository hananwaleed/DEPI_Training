/*
Create a class User with a named constructor guest() that sets default values. 
Print the default info in main(). 
 */
import 'user.dart';

void main(){

  User guestUser = User.guest();

  guestUser.displayInfo();
}