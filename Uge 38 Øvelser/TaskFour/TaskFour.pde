//4.a
void setup() {
  ArrayList<Integer> intArray = new ArrayList<Integer>();
  intArray.add(2);
  intArray.add(2);
  intArray.add(3);

  ArrayList<String> stringArray = new ArrayList<String>();
  stringArray.add("One");
  stringArray.add("Two");
  stringArray.add("Three");

  ArrayList<Boolean> booleanArray = new ArrayList<Boolean>();
  booleanArray.add(false);
  booleanArray.add(true);
  booleanArray.add(false);
  
  printArrayStrings(stringArray);
  println(sumArray(intArray));
  println(averageOfArray(intArray));
}

// 4.b
void printArrayStrings(ArrayList<String> array)
{
  for (String str : array)
  {
    System.out.println(str);
  }
}

//4.c
int sumArray(ArrayList<Integer> ints)
{
  int sum = 0;
  for (int curInt : ints)
  {
    sum += curInt;
  }
  return sum;
}

//4.d
double averageOfArray(ArrayList<Integer> array)
{
  double length = array.size();
  return sumArray(array)/length;
}
