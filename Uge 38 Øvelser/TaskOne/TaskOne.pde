void setup() {
  emptyLine();
  printString("print me");
  printNameAge("Søren", "27");
}

//1.a
void emptyLine() {
  System.out.println();
}

//1.b
void printString(String string) {
  System.out.println(string);
}

//1.c
void printNameAge(String name, String age) {
  System.out.println("My name is " +name+ ", I am "+age+ " years old");
}
