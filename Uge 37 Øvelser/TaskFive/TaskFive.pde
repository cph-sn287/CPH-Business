void setup() {
  MethodOne(); 
  MethodTwo(); 
}

/*
  The following method has an error in it. Fix the error and run it. 
*/

void MethodOne()
{
  int i = 1000; // You are not allowed to change this line. 
  
  int max = 10;
  
  String output = "";
  
  if (i > max)
  {
    output = "i is greater than "+max+".";  
  }
  
  println(output);
   
}

/* 
  Finish the following method so that we can change the number assigned 
  to the weekday and it prints the correct output.  
*/
void MethodTwo() 
{
  int weekDay = 0; // 0 = Monday, 6 = Sunday. 
  boolean weekend = false;
  
  if (weekDay < 5)
  {
    weekend = false;
  }
  else 
  {
    weekend = true;
  }
  
  // Print the name of the weekday here: 
  if (weekDay == 0)
  {
    System.out.println("It is Monday");
  }
  else if (weekDay == 1)
  {
    System.out.println("It is Tuesday");
  }
  else if (weekDay == 2)
  {
    System.out.println("It is Wednesday");
  }
  else if (weekDay == 3)
  {
    System.out.println("It is Thursday");
  }
  else if (weekDay == 4)
  {
    System.out.println("It is Friday");
  }
  else if (weekDay == 5)
  {
    System.out.println("It is Saturday");
  }
  else if (weekDay == 6)
  {
    System.out.println("It is Sunday");
  }
  
    
    
  // Print if it is weekend here:
  if (weekend) 
  {
    System.out.println("It is weekend");
  }
  else 
  {
    System.out.println("It is NOT weekend");
  }
  
}
