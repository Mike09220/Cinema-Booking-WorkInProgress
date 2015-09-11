PImage Background;
PFont font;
PFont font2;
PFont font3;
int Adult_Ticket=0;
int Child_Ticket=0;
int Adult_Price=7;
int Child_Price=3;
int Adult_Total=0;
int Child_Total=0;
int Total_Price=0;
boolean MAIN = true;
boolean SEATING = false;
boolean BOOKING = false;
int SeatX = 55;
int SeatY = 75;
boolean SeatPressed = false;
float n1 = random(0, 9);
float n2 = random(0, 9);
float n3 = random(0, 9);
float n4 = random(0, 9);
float n5 = random(0, 9);
float n6 = random(0, 9);
float n7 = random(0, 9);
float n8 = random(0, 9);
float n9 = random(0, 9);
float n10 = random(0, 9);
int r1 = round(n1);
int r2 = round(n2);
int r3 = round(n3);
int r4 = round(n4);
int r5 = round(n5);
int r6 = round(n6);
int r7 = round(n7);
int r8 = round(n8);
int r9 = round(n9);
int r10 = round(n10);
int SeatNumber = 0;
int SeatXPoint = 0;
int SeatYPoint = 0;
int NoofSeats; // Declares a new int that will be used in the for loops instead of SeatX and SeatY
int Seatlineticker = 0; //A little varible that will be used to adjust the Y of the seats when required
int arraylocation = 0; //Something to keep track of where in the array the  value is going
int sizenote = 0; //I don't know anymore, I've had too much Tea to think straight
IntList bookedseats;//an array that keeps track of which seats were booked, this can used later on to determine how many seats were booked and which ones
int output = 0; //Aghhh, I've been here too long
int textY = 150;
int total;
void setup() {
  bookedseats = new IntList(); //Really, f**k this bit, this line screwed me over (by not existing) for 6 hours
  //bookedseats.append(999);

  Background = loadImage("Cinema3.png");
  font = loadFont("Vivaldii-48.vlw");
  font2 = loadFont("FreesiaUPCBold-48.vlw");
  font3 = loadFont("CourierNewPS-BoldMT-48.vlw");

  size(800, 727);
}

void draw() {




  if (MAIN == true) {

    background(0);
    image(Background, 0, 0, 800, 727);

    textAlign(CENTER);  
    textFont(font2, 75);
    fill(#811010);
    text("Googleplex Cinema", width/2, 75);


    textAlign(CENTER);  
    textFont(font2, 40);
    fill(0);

    text("Ticket Bookings", width/2, 140);   //I don't see the need to type "width/2" as the size is constient, "400" would suffice
    //If you wish to make your code adaptive, so that it changes coords in accordance with the size then use scale();
    //Width and Height don't actually work if the program is window as the values are hard-coded
    //I am also rather tired (having written this at 2AM) so I would take everything I say with a pinch of salt

    text("Adult Tickets - £7", width/3, 220); 

    text("Child Tickets - £3", width/3, 300); 

    text("Total Price", width/3, 380); 
    text("£", 475, 385);

    text(Adult_Ticket, 575, 225); 
    text(Child_Ticket, 575, 305); 
    text(Total_Price+".00", 575, 385); 

    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(575, 207.5, 50, 50, 5);

    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(575, 287.5, 50, 50, 5);

    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(575, 367.5, 150, 50, 5);


    rectMode(CORNER);
    drawMinus(450, 205);
    drawMinus(450, 285);

    drawPlus(650, 200);
    drawPlus(650, 285);

    Adult_Total=Adult_Ticket*Adult_Price;
    Child_Total=Child_Ticket*Child_Price;
    Total_Price=Adult_Total+Child_Total;

    if (Adult_Ticket < 0) {
      Adult_Ticket = 0;
    }

    if (Child_Ticket < 0) {
      Child_Ticket = 0;
    }


    if (mouseX > 450 && mouseX < 490 && mouseY > 205 && mouseY < 215) { //Minus Adult
      noStroke(); 
      fill(100); 
      rect(450, 205, 40, 10);
    }

    if (mouseX > 450 && mouseX < 490 && mouseY > 285 && mouseY < 295) { //Minus Child
      noStroke(); 
      fill(100); 
      rect(450, 285, 40, 10);
    }

    if (mouseX > 650 && mouseX < 690 && mouseY > 200 && mouseY < 210 && mouseX > 665 && mouseX < 705 && mouseY > 185 && mouseY < 225) { //Plus Adult
      noStroke(); 
      fill(100); 
      rect(650, 200, 40, 10);
      rect(665, 185, 10, 40);
    }

    if (mouseX > 650 && mouseX < 690 && mouseY > 285 && mouseY < 295 && mouseX > 665 && mouseX < 705 && mouseY > 270 && mouseY < 310) { //Plus Child
      noStroke(); 
      ;
      fill(100); 
      rect(650, 285, 40, 10);
      rect(665, 270, 10, 40);
    }


    stroke(0);
    fill(31, 209, 0);
    rect(620, 647, 150, 50, 10);

    if (mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697) {
      stroke(0);
      fill(100);
      rect(620, 647, 150, 50, 10);
    }

    fill(0);
    textFont(font2, 60);
    textAlign(CENTER);
    text("NEXT", 695, 685);

    stroke(0);
    fill(255, 0, 0);
    rect(30, 647, 150, 50, 10);


    if (mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697) {
      stroke(0);
      fill(100);
      rect(30, 647, 150, 50, 10);
    }


    fill(0);
    textFont(font2, 60);
    textAlign(CENTER);
    text("EXIT", 105, 685);


    if (mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697 || mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697 || mouseX > 650 && mouseX < 690 && mouseY > 285 && mouseY < 295 && mouseX > 665 && mouseX < 705 && mouseY > 270 && mouseY < 310 || mouseX > 650 && mouseX < 690 && mouseY > 200 && mouseY < 210 && mouseX > 665 && mouseX < 705 && mouseY > 185 && mouseY < 225 || mouseX > 450 && mouseX < 490 && mouseY > 285 && mouseY < 295 || mouseX > 450 && mouseX < 490 && mouseY > 205 && mouseY < 215) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  }
  //Secret Hint #6: I've been have had a theory about hitboxes where instead of using a pile of numbers that have be reassigned, you could use them once and then declare
  //two ints that are the X and Y values, this would help avoid stupid visual errors where a hitbox doesn't align with its button
  if (SEATING == true) {




    background(#811010);






    stroke(0);
    fill(31, 209, 0);
    rect(620, 647, 150, 50, 10);

    if (mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697) {
      stroke(0);
      fill(100);
      rect(620, 647, 150, 50, 10);
    }

    fill(0);
    textFont(font2, 60);
    textAlign(CENTER);
    text("BOOK", 695, 685);

    stroke(0);
    fill(255, 0, 0);
    rect(30, 647, 150, 50, 10);


    if (mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697) {
      stroke(0);
      fill(100);
      rect(30, 647, 150, 50, 10);
    }


    fill(0);
    textFont(font2, 60);
    textAlign(CENTER);
    text("BACK", 105, 685);

    if (mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697 || mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }

    noStroke();
    fill(100);
    rect(50, 10, 700, 10);

    fill(0);
    textFont(font2, 20);
    textAlign(CENTER);
    text("SCREEN", 400, 30);

    SeatX = 55;
    SeatY = 75;
    Seatlineticker = 1;
    SeatNumber = 0;
    for (NoofSeats = 0; NoofSeats < 220; NoofSeats += 1) {  //This is your new and (slightly) improved for loop where instead of having new values to be calculated (SeatX and SeatY)
      //there is instead one value (NoofSeats) which makes calculating seat positions and other math equations easier





      if (mouseX > SeatX && mouseX < SeatX+25 && mouseY > SeatY && mouseY < SeatY+ 25) {
        fill(31, 209, 0);
      } else { 
        fill(100);
      }
      //The entire section below is new, if you looked through my Randomiser code then you may spot similar pharses and lines
      //I'll try to explain the best I can be a severely suggest that you look up the commands on the reference guide (there is also commands that are not on the reference and 
      //can only be found on a JAVA syntax dictionary)
      if (mousePressed && mouseX > SeatX && mouseX < SeatX+25 && mouseY > SeatY && mouseY < SeatY+ 25) {
        if (bookedseats.size() > 0) {                   //Checks to see if the IntList that contains the seat numbers has values in it - This line is one of several lines that maybe screwing up the program, if you see this then its still broken
          bookedseats.append(NoofSeats);                //Adds the seat number to the IntList
          arraylocation = arraylocation + 1;            //This is an original line supposed to handle an array but that idea was retired, this serves another function to determine how many seats were picked out of the possible total

          if (bookedseats.hasValue(SeatNumber)) {       //Checks to make sure the selected seat number doesn't already exist in the list
          } else {
            if (arraylocation < bookedseats.size()) {   //Checks to make sure the cap wasn't reached (The cap is supposed to be defined by the no of tickets ordered but I don't think I wrote that bit yet
              bookedseats.append(SeatNumber);           //Adds the seat number to the IntList
              arraylocation = arraylocation + 1;        //This is an original line supposed to handle an array but that idea was retired
            } else {
              text("All Seats Booked", 400, 50);        //Outputs if the cap was reached
            }
          }
        }
      }
      if (SeatPressed == true || mouseX > SeatX && mouseX < SeatX+25 && mouseY > SeatY && mouseY < SeatY+ 25 && mousePressed) {  //I replaced the AND condition (&&) at the start with an OR condition (||)

        fill(0);
      }

      noStroke();
      rect(SeatX, SeatY, 25, 25);                        //Draws the lovely seats
      SeatX = SeatX + 35;                                //Changes the X coord of each seat so they aren't bunched up
      if (Seatlineticker == 20) {                        //Checks to see if a row was filled up (hard coded but lol) 
        SeatY = SeatY + 50;                              //Changes the Y coord of the seats to a new line 
        Seatlineticker = 0;                              //This resets the number of seats present in each row
        SeatX = 55;                                      //This resets the X coord of the seats so that they start at the beginning
      }
      Seatlineticker = Seatlineticker + 1;               //Adds one to the number of seats in each row
      SeatNumber = SeatNumber + 1;                       //Adds one to the total number of seats generated (for possible future logic and math applications)
    }




    if (BOOKING == true) {  //I think I accidently broke something here, but I can't check it, far too late (2.50AM now)


      background(255);


      fill(0);
      textFont(font3, 18);
      textAlign(LEFT);
      text("Your receipt number is "+r1+r2+r3+r4+r5+r6+r7+r8+r9+r10+"\n"+"Your total is £"+Total_Price+".00\n"+"You have booked "+Child_Ticket+" Child Tickets at £"+Child_Price+" and "+Adult_Ticket+" Adult Tickets at £"+Adult_Price, 50, 50);
      for (output = 0; output < total; output = output + 1) {    //Looked at it again (3.10AM) and its here that causes the problem, for some unknown reason this piece screws you over 
        text(bookedseats.get(arraylocation), 50, textY);                 //I think we should look over this loop during Team-Building or something to determine where I went wrong
        textY = textY + 50;
      }
      stroke(0);
      fill(31, 209, 0);
      rect(620, 647, 150, 50, 10);

      if (mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697) {
        stroke(0);
        fill(100);
        rect(620, 647, 150, 50, 10);
      }

      fill(0);
      textFont(font2, 60);
      textAlign(CENTER);
      text("FINISH", 695, 685);

      stroke(0);
      fill(255, 0, 0);
      rect(30, 647, 150, 50, 10);


      if (mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697) {
        stroke(0);
        fill(100);
        rect(30, 647, 150, 50, 10);
      }


      fill(0);
      textFont(font2, 60);
      textAlign(CENTER);
      text("BACK", 105, 685);

      if (mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697 || mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697) {
        cursor(HAND);
      } else {
        cursor(ARROW);
      }
    }
  }
}
void mouseClicked() {
  //I still believe this bit will work it just needs to be defined better, maybe look at it after we've sorted the "small" infinity loop issue
  //  if(mouseX > SeatXPoint && mouseX < SeatXPoint+25 && mouseY > SeatYPoint && mouseY < SeatYPoint+ 25 && SEATING == true){
  //     SeatPressed = true;
  //   println(SeatNumber);

  //   }
  if (mouseX > 450 && mouseX < 490 && mouseY > 205 && mouseY < 215 && MAIN == true) { //Minus Adult
    Adult_Ticket=Adult_Ticket-1;
  }

  if (mouseX > 450 && mouseX < 490 && mouseY > 285 && mouseY < 295 && MAIN == true) { //Minus Child
    Child_Ticket=Child_Ticket-1;
  }

  if (mouseX > 650 && mouseX < 690 && mouseY > 200 && mouseY < 210 && mouseX > 665 && mouseX < 705 && mouseY > 185 && mouseY < 225 && MAIN == true) { //Plus Adult
    Adult_Ticket=Adult_Ticket+1;
  }

  if (mouseX > 650 && mouseX < 690 && mouseY > 285 && mouseY < 295 && mouseX > 665 && mouseX < 705 && mouseY > 270 && mouseY < 310 && MAIN == true) { //Plus Child
    Child_Ticket=Child_Ticket+1;
  }
  if (mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697 && MAIN == true) {
    exit();
  }
  if (mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697 && SEATING == true) {
    MAIN = true;
    SEATING = false;
    BOOKING = false;
  }
  if (mouseX > 30 && mouseX < 180 && mouseY > 647 && mouseY < 697 && BOOKING == true) {
    MAIN = false;
    SEATING = true;
    BOOKING = false;
  }
  if (mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697 && SEATING == true) {
    MAIN = false;
    SEATING = false;
    BOOKING = true;
  }
  if (mouseX > 620 && mouseX < 770 && mouseY > 647 && mouseY < 697 && MAIN == true) {


    MAIN = false;
    SEATING = true;
    BOOKING = false;
    total = Adult_Ticket + Child_Ticket;
  }
}

