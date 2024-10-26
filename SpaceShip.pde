class SpaceShip {
  PImage img;
  int x,y;
  
  void SetupShip() {
    img = loadImage("ball.png");
    x = mouseX;
    y = 3*(height/4);
  }
  
  void Move(){
    x = mouseX;
    y = 3*(height/4);
  }
  
  void ShowShip(){
    pushMatrix( ) ;
    imageMode(CENTER);
    image(img, x, y);
    popMatrix( );
  } 
  
  int[] Get_hitbox_ship(){
    int left_hitbox = x - (img.width/2);
    int right_hitbox= x + (img.width/2);
    int up_hitbox = y + (img.height/2);
    int down_hitbox = y - (img.height/2);
    int[] hitbox = {left_hitbox,right_hitbox,up_hitbox,down_hitbox};
    return hitbox; 
  }
  
  int Get_width(){
    return img.width;
  }
  
  int Get_height(){
    return img.height;
  }
  int Get_X(){
    return x;
  }
  
  int Get_Y(){
    return y;
  }
}
