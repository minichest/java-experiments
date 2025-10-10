

for(int i=1; i<41; i++) {
  if (i % 3 == 0 && i % 5 == 0) {
    print("Fizzbuzz \n");
  } else if (i % 3 == 0) {
    print("Fizz \n");
  } else if (i % 5 == 0) {
    print("Buzz \n");
  } else {
    print(i, "\n");
  }
}
