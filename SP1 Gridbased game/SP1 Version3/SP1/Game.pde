import java.util.Random;

class Game
{
  private Random rnd;
  private final int width;
  private final int height;
  private int[][] board;
  private Keys keys;
  private int playerLife;
  private int playerPoints;
  private Dot player;
  private Dot player2;
  private int player2Life;
  private int player2Points;
  private Dot[] enemies;
  private Dot food;
  boolean player1Won = false;
  boolean player2Won = false;


  Game(int width, int height, int numberOfEnemies)
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    player = new Dot(0, 0, width-1, height-1);
    player2 = new Dot(0, 0, width-1, height-1);
    food = new Dot(width/2, height/2, width-1, height-1);
    enemies = new Dot[numberOfEnemies];
    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    this.playerLife = 100;
    this.playerPoints = 0;
    this.player2Life = 100;
    this.player2Points = 0;
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayerLife()
  {
    return playerLife;
  }
  
  public int getPlayerPoints()
  {
    return playerPoints;
  }
  
  public int getPlayer2Life()
  {
    return player2Life;
  }
  
  public int getPlayer2Points()
  {
    return player2Points;
  }

  public void onKeyPressed(char ch)
  {
    keys.onKeyPressed(ch);
  }

  public void onKeyReleased(char ch)
  {
    keys.onKeyReleased(ch);
  }

  public void update()
  {
    updatePlayer();
    updatePlayer2();
    updateEnemies();
    updateFood();
    checkForCollisions();
    didSomeoneWin();
    clearBoard();
    populateBoard();
  }
  
  public void didSomeoneWin()
  {
    if (playerLife < 0 || player2Points > 99)
    {
      player2Won = true;
    }
    else if (player2Life < 0 || playerPoints > 99)
    {
      player1Won = true;
    }
    
  }


  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer()
  {
    //Update player
    if (keys.wDown() && !keys.sDown())
    {
      player.moveUp();
    }
    if (keys.aDown() && !keys.dDown())
    {
      player.moveLeft();
    }
    if (keys.sDown() && !keys.wDown())
    {
      player.moveDown();
    }
    if (keys.dDown() && !keys.aDown())
    {
      player.moveRight();
    }
  }
  
  private void updatePlayer2()
  {
    //Update player
    if (keys.arrowUpDown() && !keys.arrowDownDown())
    {
      player2.moveUp();
    }
    if (keys.arrowLeftDown() && !keys.arrowRightDown())
    {
      player2.moveLeft();
    }
    if (keys.arrowDownDown() && !keys.arrowUpDown())
    {
      player2.moveDown();
    }
    if (keys.arrowRightDown() && !keys.arrowLeftDown())
    {
      player2.moveRight();
    }
  }
  
  private Dot closestPlayer(Dot dot)
  {
    Dot closestPlayer;
    
    int dx1 = player.getX() - dot.getX();
    int dy1 = player.getY() - dot.getY();
    int dx2 = player2.getX() - dot.getX();
    int dy2 = player2.getY() - dot.getY();
    
    if (abs(dx1) < abs(dx2) && abs(dx1) < abs(dy2))
    {
      closestPlayer = player;
    }
    else if (abs(dy1) < abs(dx2) && abs(dy1) < abs(dy2))
    {
      closestPlayer = player;
    }
    else
    {
      closestPlayer = player2;
    }
    return closestPlayer;
  }

  private void updateEnemies()
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //check which player is closest to dot
      Dot closestPlayer = closestPlayer(enemies[i]);
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = closestPlayer.getX() - enemies[i].getX();
        int dy = closestPlayer.getY() - enemies[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }

  private void updateFood()
  {
    Dot closestPlayer = closestPlayer(food);
   //Move food opposite of closest player
      //2 out of 3 we will move opposite direction
      if (rnd.nextInt(3) < 2)
      {
        int dx = closestPlayer.getX() - food.getX();
        int dy = closestPlayer.getY() - food.getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            food.moveLeft();
          } else
          {
            //Player is to the left
            food.moveRight();
          }
        } else if (dy > 0)
        {
          //Player is down;
          food.moveUp();
        } else
        {//Player is up;
          food.moveDown();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food.moveRight();
        } else if (move == 1)
        {
          //Move left
          food.moveLeft();
        } else if (move == 2)
        {
          //Move up
          food.moveUp();
        } else if (move == 3)
        {
          //Move down
          food.moveDown();
        }
      }
    }
  


  private void populateBoard()
  {
    //Insert player
    board[player.getX()][player.getY()] = 1;
    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
    //insert food
    board[food.getX()][food.getY()] = 3;
    //insert player2
    board[player2.getX()][player2.getY()] = 4;
  }

  private void checkForCollisions()
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY())
      {
        //We have a collision
        --playerLife;
      }
      if (enemies[i].getX() == player2.getX() && enemies[i].getY() == player2.getY())
      {
        //We have a collision
        --player2Life;
      }
    }
    //Check for food collision for player1
    if (food.getX() == player.getX() && food.getY() == player.getY())
      {
        //We have a collision, update points & food position
        ++playerPoints;
        food.x = rnd.nextInt(width);
        food.y = rnd.nextInt(height);
      }
      //Check for fodo collision for player2
      if (food.getX() == player2.getX() && food.getY() == player2.getY())
      {
        //We have a collision, update points & food position
        ++player2Points;
        food.x = rnd.nextInt(width);
        food.y = rnd.nextInt(height);
      }
  }
}
