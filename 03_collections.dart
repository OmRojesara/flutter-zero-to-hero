// Collections in Dart - Simple Examples for Beginners
// Collections are like containers that hold multiple items

void main() {
  print('=== Learning Collections in Dart ===\n');
  
  // 1. Lists - like a shopping list with items in order
  learnAboutLists();
  
  // 2. Sets - like a collection of unique items (no duplicates)
  learnAboutSets();
  
  // 3. Maps - like a phone book with names and numbers
  learnAboutMaps();
  
  print('\n=== Collections help organize data! ===');
}

void learnAboutLists() {
  print('--- LISTS (Ordered items) ---');
  
  // Creating a list of friends
  List<String> friends = ['Om', 'Abhishek', 'Akshit'];
  print('My friends: $friends');
  
  // Adding a new friend
  friends.add('Kartik');
  print('After adding Kartik: $friends');
  
  // Adding multiple friends at once
  friends.addAll(['Hardik', 'Anand']);
  print('After adding more friends: $friends');
  
  // Removing a friend
  friends.remove('Abhishek');
  print('After removing Abhishek: $friends');
  
  // Checking how many friends I have
  print('Total friends: ${friends.length}');
  
  // Getting the first and last friend
  print('First friend: ${friends.first}');
  print('Last friend: ${friends.last}');
  
  // Going through each friend one by one
  print('\nMy friends list:');
  for (int i = 0; i < friends.length; i++) {
    print('${i + 1}. ${friends[i]}');
  }
  
  // Another way to go through friends
  print('\nUsing for-in loop:');
  for (String friend in friends) {
    print('Friend: $friend');
  }
  
  print('');
}

void learnAboutSets() {
  print('--- SETS (Unique items only) ---');
  
  // Creating a set of favorite colors
  Set<String> favoriteColors = {'Blue', 'Red', 'Green'};
  print('My favorite colors: $favoriteColors');
  
  // Adding a new color
  favoriteColors.add('Yellow');
  print('After adding Yellow: $favoriteColors');
  
  // Adding a color that already exists (won't add duplicate)
  favoriteColors.add('Blue');
  print('After trying to add Blue again: $favoriteColors');
  
  // Creating another set
  Set<String> moreColors = {'Purple', 'Orange', 'Blue'};
  
  // Combining both sets
  Set<String> allColors = favoriteColors.union(moreColors);
  print('All colors combined: $allColors');
  
  // Finding colors that are in both sets
  Set<String> commonColors = favoriteColors.intersection(moreColors);
  print('Colors in both sets: $commonColors');
  
  print('');
}

void learnAboutMaps() {
  print('--- MAPS (Key-Value pairs) ---');
  
  // Creating a map of student names and their ages
  Map<String, int> studentAges = {
    'Om': 20,
    'Abhishek': 22,
    'Akshit': 19,
    'Kartik': 21
  };
  
  print('Student ages: $studentAges');
  
  // Adding a new student
  studentAges['Hardik'] = 20;
  print('After adding Hardik: $studentAges');
  
  // Finding someone's age
  print('Om\'s age: ${studentAges['Om']}');
  
  // Checking if someone exists
  if (studentAges.containsKey('Anand')) {
    print('Anand\'s age: ${studentAges['Anand']}');
  } else {
    print('Anand is not in our list');
  }
  
  // Going through each student and their age
  print('\nStudent information:');
  studentAges.forEach((name, age) {
    print('$name is $age years old');
  });
  
  // Creating a map of subjects and marks
  Map<String, int> subjectMarks = {
    'Math': 85,
    'Science': 90,
    'English': 78,
    'History': 92
  };
  
  print('\nSubject marks: $subjectMarks');
  
  // Finding the highest mark
  int highestMark = 0;
  String bestSubject = '';
  
  subjectMarks.forEach((subject, mark) {
    if (mark > highestMark) {
      highestMark = mark;
      bestSubject = subject;
    }
  });
  
  print('Best subject: $bestSubject with $highestMark marks');
  
  print('');
}
