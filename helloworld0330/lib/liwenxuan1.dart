import 'dart:convert';

void main() {
  int num1 = 10;
  double pi = 3.14;

  double num3 = num1 * pi;
  num num4 = num1 * pi;

  print('num3=$num3');
  print('num4=$num4');
}
void main(){
  String firstname='Gildong';
  String sirname='Hong';
  String fullname='$sirname $firstname';

  print('hello,$firstname');
  print('$fullname:${fullname.length}');
}
void main(){
  bool aa=false;
  bool bb=(num1>0);
  bool chk=aa||bb;

  print('check resule is($chk)');
}
void main() {
  int num1 = 10;
  double num2 = 3.141592;
  String num1str = num1.toString();
  String num2Str = num2.toStringAsFixed(2);
  print("num1 to str is $num1Str");
  print("num2 to str is $num2Str");
}

