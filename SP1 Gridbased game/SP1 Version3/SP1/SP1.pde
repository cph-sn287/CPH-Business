/**
 * Array 2D. 
 * 
 * Demonstrates the syntax for creating a two-dimensional (2D) array.
 * Values in a 2D array are accessed through two index values.  
 * 2D arrays are useful for storing images. In this example, each dot 
 * is colored in relation to its distance from the center of the image. 
 */

import java.util.Random;

Game game = new Game(30, 20, 5);
PFont font;

public void settings() {
  size(1201, 801);
}

void setup()
{
  frameRate(10);
  font = createFont("Arial", 16, true);
  textFont(font, 16);
}

void keyReleased()
{
  game.onKeyReleased(key);
}

void keyPressed()
{
  game.onKeyPressed(key);
}

void draw()
{
  background(0); //Black
  if (!game.player1Won && !game.player2Won) {
    game.update();
    // This embedded loop skips over values in the arrays based on
    // the spacer variable, so there are more values in the array
    // than are drawn here. Change the value of the spacer variable
    // to change the density of the points
    int[][] board = game.getBoard();
    for (int y = 0; y < game.getHeight(); y++)
    {
      for (int x = 0; x < game.getWidth(); x++)
      {
        if (board[x][y] == 0)
        {
          fill(0, 0, 0);
        } else if (board[x][y] == 1)
        {
          fill(0, 0, 255);
        } else if (board[x][y] == 2)
        {
          fill(255, 0, 0);
        } else if (board[x][y] == 3)
        {
          fill(0, 255, 0);
        } else if (board[x][y] == 4)
        {
          fill(255, 255, 0);
        }
        stroke(100, 100, 100);
        rect(x*40, y*40, 40, 40);
      }
    }
  } else if (game.player1Won)
  {
    fill(255);
    text("P1 Wins!", 550, 400);
  } else if (game.player2Won)
  {
    fill(255);
    text("P2 Wins!", 550, 400);
  }
  fill(255);
  text("P1 Lifes: "+game.getPlayerLife(), 25, 25);
  text("P1 Points: "+game.getPlayerPoints(), 25, 50);
  text("P2 Lifes: "+game.getPlayer2Life(), 25, 80);
  text("P2 Points: "+game.getPlayer2Points(), 25, 105);
}
