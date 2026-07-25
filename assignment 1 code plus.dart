void main() {
  print("Welcome to our student info program");
  const String? name = "Youssef";
  int? age = 22;
  final int? id = 2026;
  bool? isEnrolled;
  isEnrolled ??= false;

  print("student Name is $name and he is $age years old");
  print(
    "$name id`s = $id and status of enrolling into os course is $isEnrolled",
  );
}
