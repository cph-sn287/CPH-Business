void setup() {
  
  //5.a
  ArrayList<Student> studentArray = new ArrayList<Student>();
  
  studentArray.add(new Student("Navn1", 19, false, "A"));
  studentArray.add(new Student("Navn2", 19, true, "B"));
  studentArray.add(new Student("Navn3", 20, false, "C"));
  studentArray.add(new Student("Navn4", 20, true, "A"));
  studentArray.add(new Student("Navn5", 21, false, "B"));
  studentArray.add(new Student("Navn6", 21, true, "C"));
  studentArray.add(new Student("Navn7", 22, false, "A"));
  studentArray.add(new Student("Navn8", 22, true, "B"));
  studentArray.add(new Student("Navn9", 23, false, "C"));
  studentArray.add(new Student("Navn10", 23, true, "A"));
  
  //5.b
  printName(studentArray, 0);
  printName(studentArray, 2);
  printName(studentArray, 4);
  printName(studentArray, 6);
  printName(studentArray, 8);
  
  //5.c
  println(studentIndex(studentArray, "noSuchName"));
  println(studentIndex(studentArray, "navn"));
  println(studentIndex(studentArray, "Navn"));
  println(studentIndex(studentArray, "Navn5"));
  println(studentIndex(studentArray, "navn5"));
  println(studentIndex(studentArray, "Navn10"));
  
  
}


//5.b
void printName(ArrayList<Student> students, int nr)
{
  System.out.println(students.get(nr).name);
}

//5.c
int studentIndex(ArrayList<Student> students, String name) {
  boolean foundName = false;
  int whileIndex = 0;
  
  while (!foundName && whileIndex<students.size())
  {
    if (students.get(whileIndex).name.equals(name))
    {
      return whileIndex;
    }
    else
    {
      whileIndex++;
    }
  }
  return -1;
}
