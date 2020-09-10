//task 7.a
int input = 20;
while (input > 0)
{
  if (input==6)
  {
    System.out.println("six");
  }
  else
  {
    System.out.println(input);
  }
  
  if (input==10)
  {
    System.out.println("HALF!");
  }
  
  input = input-1;
}




// task 7.b
int input2 = 20;
int half = input2/2;
while (input2 > 0)
{
  if (input2==6)
  {
    System.out.println("six");
  }
  else
  {
    System.out.println(input2);
  }
  
  if (input2 == half)
  {
    System.out.println("HALF!");
  }
  
  input2 = input2-1;
}
