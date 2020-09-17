void setup() {
  Teacher teacher = new Teacher("Teacher Name", 40, false);
  Student me = new Student("Søren", 27, false, "C");
  Student otherStudent = new Student("SomeOtherStudent", 20, false, "C");
  
  System.out.println(teacher.name);
  System.out.println(me.name + " " + me.datamatikerTeam);
  System.out.println(otherStudent.name + " " + otherStudent.datamatikerTeam);
  
  
}
