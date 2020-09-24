//5.a
int[][] board = new int[8][8];


//5.b, 5.c
void setup()
{
  size(350, 350);
  
  for (int i=0; i<8 ; i++)
  {
    for (int j=0; j<8 ; j++)
    {
      if (j%2 == 0)
      {
        board[i][j] = 0;
      }
      else
      {
        board[i][j] = 1;
      }
    }
  }
}


//5.d & 5.e
void draw() {
  for (int i=0; i<8 ; i++)
  {
    for (int j=0; j<8 ; j++)
    {
      if (board[i][j] == 0)
      {
        fill(255,0,0);
        rect(i*40,j*40,40,40);
      }
      else
      {
        fill(0,0,255);
        rect(i*40,j*40,40,40);
      }
    }
  }
}
