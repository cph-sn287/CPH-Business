boolean happy = true;

void setup() {
   if (iAmHappy())
   {
     println("I clap my hands");
   }
   else
   {
     println("I don't clap my hands"); 
   }
   
   System.out.println(sum(2,3));
   System.out.println(makeUpperCase("big letters"));
   System.out.println(isFirstCharUpperCase("this is false"));
   System.out.println(isFirstCharUpperCase("This is true"));
}

//2.a
boolean iAmHappy()
{
  return happy;
  
}



//2.b
int sum(int a, int b)
{
  return a+b;
}


//2.c
String makeUpperCase(String string)
{
  return string.toUpperCase();
}


//2.d
boolean isFirstCharUpperCase(String string)
{
  if (Character.isUpperCase(string.charAt(0)))
  {
    return true;
  }
  else
  {
    return false;
  }
}
