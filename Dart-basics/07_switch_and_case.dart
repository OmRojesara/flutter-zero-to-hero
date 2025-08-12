
void main() {
  // Learning about switch-case statements in Dart
  // Note: Switch works with int and String types
  
  String studentGrade = 'A';
  
  switch (studentGrade) {
    case 'A':
      print("Excellent grade of A - Outstanding work!");
      break;
      
    case 'B':
      print("Very Good grade - Keep it up!");
      break;
      
    case 'C':
      print("Good enough grade - But work harder next time");
      break;
      
    case 'D':
      print("Below average - Need to improve");
      break;
      
    case 'F':
      print("You have failed - Must retake the course");
      break;
      
    default:
      print("Invalid Grade - Please check your input");
  }
  
  // Another example with numbers
  int dayOfWeek = 3;
  
  switch (dayOfWeek) {
    case 1:
      print("Monday - Start of the week");
      break;
    case 2:
      print("Tuesday - Getting into the groove");
      break;
    case 3:
      print("Wednesday - Midweek already!");
      break;
    case 4:
      print("Thursday - Almost there");
      break;
    case 5:
      print("Friday - Weekend is coming!");
      break;
    case 6:
    case 7:
      print("Weekend - Time to relax!");
      break;
    default:
      print("Invalid day number");
  }
}
