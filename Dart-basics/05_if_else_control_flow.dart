
void main() {
  // Learning about if-else statements in Dart
  
  // Basic if-else example
  var monthlySalary = 15000;
  
  if (monthlySalary > 20000) {
    print("You got promotion. Congratulations!");
  } else {
    print("You need to work hard!");
  }
  
  // If-else if ladder for grading system
  var studentMarks = 70;
  
  if (studentMarks >= 90 && studentMarks < 100) {
    print("A+ grade - Excellent!");
  } else if (studentMarks >= 80 && studentMarks < 90) {
    print("A grade - Very Good!");
  } else if (studentMarks >= 70 && studentMarks < 80) {
    print("B grade - Good work!");
  } else if (studentMarks >= 60 && studentMarks < 70) {
    print("C grade - Average");
  } else if (studentMarks > 30 && studentMarks < 60) {
    print("D grade - Need improvement");
  } else if (studentMarks >= 0 && studentMarks < 30) {
    print("You have failed");
  } else {
    print("Invalid Marks. Please try again!");
  }
  
  // Another example with age
  var personAge = 25;
  
  if (personAge < 18) {
    print("You are a minor");
  } else if (personAge >= 18 && personAge < 65) {
    print("You are an adult");
  } else {
    print("You are a senior citizen");
  }
}
