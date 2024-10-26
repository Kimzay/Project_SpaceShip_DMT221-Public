SpaceShip Ship = new SpaceShip();
Meteor Mete = new Meteor();

void setup ( ){
  fullScreen();
}

void draw(){
  background(0);
  Run_Ship();
  Run_Meteo();
}

void Run_Ship(){
  Ship.SetupShip();
  Ship.Move();
  Ship.ShowShip();
  println(" Ship ");
  Print_Hitbox(Ship.Get_hitbox_ship());
  Print_Target(Ship.Get_hitbox_ship());
}

void Run_Meteo(){
  if(Mete.Get_Status_new() == true){
      Mete.SetupMeteor();
      Mete.Change_Status(false);
  }
  Mete.Move();
  Mete.ShowMereor();
  println(" Meteo ");
  Print_Hitbox(Mete.Get_hitbox_Meteor());
  Print_Target(Mete.Get_hitbox_Meteor());
}

void Print_Hitbox(int[] hitbox){
    println(" hitbox left = ",hitbox[0]);
    println(" hitbox right = ",hitbox[1]);
    println(" hitbox up = ",hitbox[2]);
    println(" hitbox down = ",hitbox[3]);
    println();

}

void Print_Target(int[] hitbox){
    stroke(204, 102, 0);
    line(hitbox[0],hitbox[3],hitbox[0],hitbox[2]);
    line(hitbox[0],hitbox[2],hitbox[1],hitbox[2]);
    line(hitbox[1],hitbox[2],hitbox[1],hitbox[3]);
    line(hitbox[0],hitbox[3],hitbox[1],hitbox[3]);
}
