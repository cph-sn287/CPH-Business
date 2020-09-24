//4.a
void divisibleNumbers(int divide)
{
  for (int i=0 ; i <= 100 ; i++)
  {
    if (i%divide == 0)
    {
      System.out.println(i);
    }
  }
}



// 4.b
int[] arr = new int[]{ 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };


//4.c
int randomElement(int[] array)
{
  return array[int(random(array.length))];
}


//4.d
void recursiveFunc(int value)
{
  System.out.println(value);
  if (value>0)
  {
    recursiveFunc(value-1);
  }
}


//4.e
void febSeq(int x1, int x2) {
  if (x1 == 1 && x2 == 1)
  {
    System.out.println(x1 + "\t" + x2);
  }
  if (x1 <= 1000 && x2 <= 1000)
  {
    int x3 = x1+x2;
    System.out.println(x3);
    febSeq(x3,x1);
  }
}


void setup()
{
  divisibleNumbers(1);
  divisibleNumbers(50);
  println(randomElement(arr));
  recursiveFunc(5);
  febSeq(1,1);
}
