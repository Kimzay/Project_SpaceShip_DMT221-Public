class Meteor {
  PImage img,temp_img;
  int x,y;
  int speed = 3;
  boolean status_new_meteo = true;
  int size1 = 30;
  int size2 = 30;;
  
  void SetupMeteor() {
    img = loadImage("face.png");
    x = int(random(width));
    y = height/4;
  }
  
  void Move(){
      y += speed;
      size1 += 1;
      size2 += 1;
      
      reset();
  }
      
  void ShowMereor(){
    pushMatrix( ) ;
    imageMode(CENTER);
    img.resize(size1,size2);
    image(img, x, y);
    popMatrix( );
  }
  
  void reset (){
    if(y >= height){
      status_new_meteo = true;
      size1= 30;
      size2 = 30;
    }
  }
  
  int[] Get_hitbox_Meteor(){
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
  
  boolean Get_Status_new (){
    return status_new_meteo;
  }
  
  void Change_Status(boolean status){
     status_new_meteo = status;
  }
}
