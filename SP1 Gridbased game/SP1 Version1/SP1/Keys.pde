class Keys
{
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;
  private boolean arrowUpDown = false;
  private boolean arrowLeftDown = false;
  private boolean arrowDownDown = false;
  private boolean arrowRightDown = false;
  
  public Keys(){}
  
  public boolean wDown()
  {
    return wDown;
  }
  
  public boolean aDown()
  {
    return aDown;
  }
  
  public boolean sDown()
  {
    return sDown;
  }
  
  public boolean dDown()
  {
    return dDown;
  }
  
  public boolean arrowUpDown()
  {
    return arrowUpDown;
  }
  
  public boolean arrowLeftDown()
  {
    return arrowLeftDown;
  }
  
  public boolean arrowDownDown()
  {
    return arrowDownDown;
  }
  
  public boolean arrowRightDown()
  {
    return arrowRightDown;
  }
  
  
  
  void onKeyPressed(char ch)
  {
    if(ch == 'W' || ch == 'w')
    {
      wDown = true;
    }
    else if (ch == 'A' || ch == 'a')
    {
      aDown = true;
    }
    else if(ch == 'S' || ch == 's')
    {
      sDown = true;
    }
    else if(ch == 'D' || ch == 'd')
    {
      dDown = true;
    }
    else if (keyCode == UP)
    {
      arrowUpDown = true; 
    }
    else if (keyCode == LEFT)
    {
      arrowLeftDown = true; 
    }
    else if (keyCode == DOWN)
    {
      arrowDownDown = true; 
    }
    else if (keyCode == RIGHT)
    {
      arrowRightDown = true; 
    }
  }
  
  void onKeyReleased(char ch)
  {
    if(ch == 'W' || ch == 'w')
    {
      wDown = false;
    }
    else if (ch == 'A' || ch == 'a')
    {
      aDown = false;
    }
    else if(ch == 'S' || ch == 's')
    {
      sDown = false;
    }
    else if(ch == 'D' || ch == 'd')
    {
      dDown = false;
    }
       else if (keyCode == UP)
    {
      arrowUpDown = false; 
    }
    else if (keyCode == LEFT)
    {
      arrowLeftDown = false; 
    }
    else if (keyCode == DOWN)
    {
      arrowDownDown = false; 
    }
    else if (keyCode == RIGHT)
    {
      arrowRightDown = false; 
    }
  }
}
