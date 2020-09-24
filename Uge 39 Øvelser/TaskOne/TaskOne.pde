//1.a
int[] intArray = new int[]{8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};


//sorting method
void sortArray(int[] intArray) {
  for (int i=1; i<intArray.length-1; i++)
  {
    if (intArray[i] > intArray[i+1])
    {
      int tmp = intArray[i];
      intArray[i] = intArray[i+1];
      intArray[i+1] = tmp;
    }
  }

  for (int i=0; i<intArray.length-1; i++)
  {
    int lowVal = intArray[i];
    int swapIndex = i;

    // check for lowest value between i and intArray.length
    for (int j=i+1 ; j<intArray.length ; j++)
    {
      if (lowVal > intArray[j])
      {
        lowVal = intArray[j];
        swapIndex = j;
      }

      // if intArray[i] is not already lowest value, swap.
      if (lowVal != intArray[i])
      {
        int tmp = intArray[i];
        intArray[i] = lowVal;
        intArray[swapIndex] = tmp;
      }
    }
  }
}

//testing
void setup() {
  /*for (int i=0; i<intArray.length; i++)
  {
    System.out.println(intArray[i]);
  }*/
  sortArray(intArray);
  for (int i=0; i<intArray.length; i++)
  {
    System.out.println(intArray[i]);
  }
  
  
}
