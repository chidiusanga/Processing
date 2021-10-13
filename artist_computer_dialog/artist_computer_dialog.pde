PShape mic, head, body;
PImage tree;
PImage tree_pointilism;
PImage chidi;


int questionNumber = 0;
int answerNumber;

void calloutArtist() {
  fill(100, 80);
  beginShape();
  vertex(196, 151);
  bezierVertex(173, 89, 12, 217, 4, 103);
  bezierVertex(19, -25, 172, -28, 196, 151);
  endShape();
}

void calloutComputer() {
  fill(100, 80);
  beginShape();
  vertex(518, 191);
  bezierVertex(486, 40, 708, 256, 750, 151);
  bezierVertex(776, -44, 466, 10, 518, 191);
  endShape();
}
String[] fontList = PFont.list();
//printArray(fontlist);

PFont times;

String words = "Hi";


void setup() {

  size(800, 500);
  background(220, 250, 200);
  times = createFont("TimesNewRomanPSMT", 14);
  textFont(times);

  fill(0);
  shapeMode(CENTER);

  
  tree = loadImage("tree.jpg");
  tree_pointilism = loadImage("tree_pointilism.jpg");
  chidi = loadImage("chidi.jpg");
}




void draw() {

  background(220, 250, 200);
  strokeWeight(5);
  line(width/2, 0, width/2, height);


  strokeWeight(1);
// background(255);

  
  fill(120, 80, 0);
  
  rect(0, 300, 800, 250); // Floor
  
  // BOARD
  beginShape();
  vertex(270, 30); // Frame's top left tip
  vertex(280, 29); // Frame's top right tip
  vertex(330, 410); // Frame's right leg's right corner
  vertex(320, 409); // Frame's right leg's left corner
  vertex(298, 252); // Frame's crossbar right bottom corner
  vertex(209, 237); // Frame's crossbar left botom corner
  vertex(160, 383); // Left Foot's right tip
  vertex(150, 380);  // Left foot's left tip
  beginContour();
  vertex(272, 50); // Frame's crossbar top corner
  vertex(212, 228); // Frame's crossbar bottom left corner
  vertex(297, 241); // Frame's crossbar bottom right corner
  vertex(272, 50); // Frame's crossbar top corner
  endContour(); 
  endShape(CLOSE);

  quad(284, 48, 344, 357, 333, 359, 274, 50);  // Frame support

  fill(255);
  quad(160, 215, 180, 50, 380, 55, 360, 245);  // Canvas


  fill(80);

  // HEAD
  beginShape();
  vertex(104, 152);
  quadraticVertex(107, 119, 135, 130);
  bezierVertex(155, 139, 174, 197, 118, 175);
  endShape(CLOSE);

  // LEFT ARM
  fill(230, 240, 0);
  beginShape();
  vertex(95, 195);   // Left Shoulder
  vertex(65, 245);   // Left elbow
  vertex(135, 293);   // Left sleeve lower tip
  vertex(138, 278);   // Left sleeve upper tip
  vertex(95, 240);   // Left arm right end
  endShape(CLOSE);

  // RIGHT ARM
  fill(230, 240, 0);
  beginShape();
  vertex(150, 197);  // Right Shoulder
  vertex(180, 225);  // Upper Elbow (right)
  vertex(200, 185);  // End of Sleeve top
  vertex(215, 195);  // End of Sleve down
  vertex(185, 255);  // Lower Elbow (right)
  vertex(155, 245);  // Armpit
  endShape(CLOSE);

  // BODY
  fill(230, 240, 0);
  beginShape();
  vertex(95, 195);   // Left Shoulder
  vertex(115, 180);  // Neck back
  vertex(150, 195);  // Right Shoulder
  vertex(155, 245);  // Armpit
  vertex(145, 300);  // Shirt bottom front
  vertex(75, 280);   // Shirt bottom left
  endShape(CLOSE);

  // RIGHT SHOE
  fill(0);
  beginShape();
  vertex(162, 470);  // Right Trouser tip back
  vertex(162, 482);  // Heel left
  vertex(175, 482);  // Heel right
  vertex(175, 478);  // Heel indent
  vertex(183, 480);  // Indent out
  vertex(190, 482);  // Indent out 2
  vertex(210, 480);  // Tip
  vertex(178, 470);  // Right Trouser tip front
  endShape(CLOSE);

  // LEFT SHOE
  beginShape();
  vertex(78, 460);  // Left trouser's left tip
  vertex(79, 472);  // Heel left
  vertex(90, 472);  // Heel right
  vertex(98, 465);  // Heel indent
  vertex(108, 460);  // bulge
  vertex(108, 450);  // Tip
  endShape(CLOSE);

  // LEGS
  fill(120);
  beginShape();
  vertex(140, 295);  // Waist
  vertex(185, 375);  // Right knee
  vertex(185, 470);  // Right Trouser tip front
  vertex(160, 470);  // Right Trouser tip back
  vertex(155, 380);  // Right knee back
  vertex(115, 345);  // Groin
  vertex(90, 325);  // Groin inside
  vertex(115, 345);  // Groin return
  vertex(120, 375);  // Left knee front
  vertex(99, 460);  // Left trouser tip front
  vertex(78, 460);  // Left trouser tip back
  vertex(88, 375);  // Left knee back
  vertex(70, 310);   // Butt
  vertex(77, 280);   // Waist back
  endShape(CLOSE);


  // BRUSH
  fill(74, 10, 40);
  beginShape();
  vertex(180, 195);  // Tail
  vertex(225, 160);  // Pretip
  vertex(235, 155);  // Tip
  endShape(CLOSE);
  
  // Drawing
  noFill();
  beginShape();
  vertex(240,87);
  bezierVertex(304,61,305,125,259,156);
  bezierVertex(262,109,206,180,240,87);
  endShape();

  // RIGHT HAND
 
fill(74, 10, 40);
  beginShape();
  vertex(200, 185);  // Tip of Sleeve top
  vertex(195, 172);  // Knockle 1
  vertex(200, 165);  // Knockle 2
  vertex(210, 165);  // knockle 3
  vertex(215, 185);  // Knockle Fingers tip
  vertex(210, 195);  // Base of Palm
  endShape(CLOSE);


  //  COMPUTER

  // Computer Stand
  fill(80);
  beginShape();
  vertex(640, 310);  // Top left
  vertex(620, 340);  // Bottom left
  bezierVertex(610, 340, 654, 367, 700, 350);
  vertex(700, 350);  // Bottom right
  vertex(690, 315);  // Top right
  endShape(CLOSE);
  //Computer Body
  beginShape();
  vertex(570, 310);  // Bottom left
  vertex(580, 185);  // Top left
  vertex(730, 195);  // Top right
  vertex(715, 340);  // Bottom right
  endShape(CLOSE);
  quad(730, 195, 772, 225, 765, 300, 715, 340); // Right panel
  // Mouse
  beginShape();
  vertex(750, 357);
  bezierVertex(758, 368, 727, 400, 708, 388);
  bezierVertex(687, 378, 709, 347, 750, 357);
  endShape();
  // Mouse Wire
  noFill();
  beginShape();
  vertex(687, 335);
  bezierVertex(638, 400, 788, 308, 751, 360);
  //bezierVertex(53,151,200,102,111,103);
  endShape();
  // Screen
  fill(255);
  beginShape();
  vertex(588, 210);  // Top left down
  vertex(600, 197);  // Top left up
  vertex(700, 204);  // Top right up
  vertex(714, 218);  // Top right down
  vertex(704, 313);  // Bottom right up
  vertex(690, 324);  // Bottom right down
  vertex(591, 306);  // Bottom left down
  vertex(582, 297);  // Bottom left up
  endShape(CLOSE);


  fill(80);
  // Keyboard
  quad(478, 371, 534, 332, 700, 378, 645, 429); // Keyboard top
  line(536, 340, 502, 366);
  line(553, 348, 524, 370);
  line(575, 355, 546, 378);
  line(596, 363, 568, 386);
  line(620, 368, 590, 392);
  line(646, 375, 612, 402);
  line(673, 380, 638, 409);
  line(536, 340, 677, 380); //horizontal
  line(500, 366, 638, 410); //horizontal
  line(526, 348, 662, 388); //horizontal
  line(512, 356, 649, 399); //horizontal


  // Create the shape group
  mic = createShape(GROUP);

  // Create components of Microphone
  ellipseMode(CENTER);
  head = createShape(ELLIPSE, width/2, 375, 50, 50);
  head.setFill(color(120));
  body = createShape();
  body.beginShape();
  body.vertex(384, 398);  // Top left
  body.vertex(418, 399);  // Top right
  body.vertex(412, 488);  // Bottom right
  body.vertex(388, 488);  // Bottom left
  body.endShape(CLOSE);


  body.setFill(color(0));

  // Add the two "child" shapes to the parent group
  mic.addChild(body);
  mic.addChild(head);

  //String computerSpeech1 = "Hey, can I help you? I'm also an artist.";
  //fill(50);
  //text(computerSpeech1, 575, 60, 150, 100);  // Text wraps within text box



  //computerMic();
  //artistMic();
  
  
  
  
  
 
  if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 0) {
      calloutComputer();
      computerTalk1();
      answerNumber = 0;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 0) {
      calloutArtist();
      artistTalk1();
      questionNumber = 1;
    }
  }

 if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 1) {
      calloutComputer();
      computerTalk2();
      answerNumber = 1;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 1) {
      calloutArtist();
      artistTalk2();
      questionNumber = 2;
    }
  }


if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 2) {
      calloutComputer();
      computerTalk3();
      answerNumber = 2;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 2) {
      calloutArtist();
      artistTalk3();
      questionNumber = 3;
    }
  }

if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 3) {
      calloutComputer();
      computerTalk4();
      answerNumber = 3;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 3) {
      calloutArtist();
      artistTalk4();
      questionNumber = 4;
    }
  }
  
  
  if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 4) {
      calloutComputer();
      computerTalk5();
      answerNumber = 4;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 4) {
      calloutArtist();
      artistTalk5();
      questionNumber = 5;
    }
  }
  
  if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 5) {
      calloutComputer();
      computerTalk6();
      answerNumber = 5;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 5) {
      calloutArtist();
      artistTalk6();
      questionNumber = 6;
    }
  }
  
  if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 6) {
      calloutComputer();
      computerTalk7();
      answerNumber = 6;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 6) {
      calloutArtist();
      artistTalk7();
      questionNumber = 7;
    }
  }
  
  if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 7) {
      calloutComputer();
      computerTalk8();
      answerNumber = 7;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 7) {
      calloutArtist();
      artistTalk8();
      questionNumber = 8;
    }
  }
  
  if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 8) {
      calloutComputer();
      computerTalk9();
      answerNumber = 8;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 8) {
      calloutArtist();
      artistTalk9();
      questionNumber = 9;
    }
  }

if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 9) {
      calloutComputer();
      computerTalk10();
      answerNumber = 9;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 9) {
      calloutArtist();
      artistTalk10();
      questionNumber = 10;
    }
  }
  
  
  if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 10) {
      calloutComputer();
      computerTalk11();
      answerNumber = 10;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 10) {
      calloutArtist();
      artistTalk11();
      questionNumber = 11;
    }
  }
  
  
   if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 11) {
      calloutComputer();
      computerTalk12();
      answerNumber = 11;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 11) {
      calloutArtist();
      artistTalk12();
      questionNumber = 12;
    }
  }
  
  
   if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 12) {
      calloutComputer();
      computerTalk13();
      answerNumber = 12;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 12) {
      calloutArtist();
      artistTalk13();
      questionNumber = 13;
    }
  }
  
   if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 13) {
      calloutComputer();
      computerTalk14();
      answerNumber = 13;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 13) {
      calloutArtist();
      artistTalk14();
      questionNumber = 14;
    }
  }
  
  
   if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 14) {
      calloutComputer();
      computerTalk15();
      answerNumber = 14;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 14) {
      calloutArtist();
      artistTalk15();
      questionNumber = 15;
    }
  }
  
   if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 15) {
      calloutComputer();
      computerTalk16();
      answerNumber = 15;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 15) {
      calloutArtist();
      artistTalk16();
      questionNumber = 16;
    }
  }

 if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 16) {
      calloutComputer();
      computerTalk17();
      answerNumber = 16;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 16) {
      calloutArtist();
      artistTalk17();
      questionNumber = 17;
    }
  }

 if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 17) {
      calloutComputer();
      computerTalk18();
      answerNumber = 17;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 17) {
      calloutArtist();
      artistTalk18();
      questionNumber = 18;
    }
  }


 if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 18) {
      calloutComputer();
      computerTalk19();
      answerNumber = 18;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 18) {
      calloutArtist();
      artistTalk19();
      questionNumber = 19;
    }
  }


 if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 19) {
      calloutComputer();
      computerTalk20();
      answerNumber = 19;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 19) {
      calloutArtist();
      artistTalk20();
      questionNumber = 20;
    }
  }

 if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 20) {
      calloutComputer();
      computerTalk21();
      answerNumber = 20;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 20) {
      calloutArtist();
      artistTalk21();
      questionNumber = 21;
    }
  }


 if (mousePressed) {
    if (mouseX > 500 && mouseX < 700 && mouseY > 200 && mouseY < 400 && questionNumber == 21) {
      calloutComputer();
      computerTalk22();
      answerNumber = 21;
    }
  }

  if (mousePressed) {
    if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 300 && answerNumber == 21) {
      calloutArtist();
      artistTalk22();
      questionNumber = 22;
    }
  }

 if (mouseX < width/2) {
    translate(mouseX, mouseY);
    rotate(radians(-30));
    shape(mic, -400, -450);
  }

 if (mouseX > width/2) {
    translate(mouseX, mouseY);
    rotate(radians(30));
    shape(mic, -400, -450);
  }

 // println("Mouse X: " + mouseX);
 // println("Mouse Y: " + mouseY);
  
  
 
  


}


void showTree(){
  image(tree, 611, 206);
};

void showTreePointilism(){
  image(tree_pointilism, 611, 206);
};

void showChidi(){
  image(chidi, 611, 206);
};


void artistTextbox(){
  fill(0);
  text(words, 26, 50, 138, 100);  // Text wraps within text box
}

void computerTexbox(){
  fill(0);
  text(words, 575, 60, 150, 120);  // Text wraps within text box
}



 // artistTalk1();

void computerTalk1() {
  words = "Hi, can I help you?";
  computerTexbox();
}

void artistTalk1() {
  words = "Who are you and what can you do here?";
  artistTextbox();
}

void computerTalk2() {
  words = "I am also an artist. And I'm very creative.";
  computerTexbox();
}

void artistTalk2() {
  words = "I'm not sure. You look like a mere box.";
  artistTextbox();
}

void computerTalk3() {
  words = "Really? You call me a mere box? I'll surprise you.";
  computerTexbox();
}

void artistTalk3() {
  words = "No surprises here. I'm old in this game.";
  artistTextbox();
}

void computerTalk4() {
  words = "I can even draw or paint better than you.";
  computerTexbox();
}

void artistTalk4() {
  words = "Trying me? Okay, go ahead and paint one let me see.";
  artistTextbox();
}

void computerTalk5() {
  words = "I need someone to come and write the code in me. Can you put a program into me?";
  computerTexbox();
}

void artistTalk5() {
  words = "What do you mean?";
  artistTextbox();
}

void computerTalk6() {
  words = "I need to build the pixels. Give me the instructions I need - the algorithm.";
  computerTexbox();
}

void artistTalk6() {
  words = "I'll give you a brush. Real brush, not a metaphorical brush.";
  artistTextbox();
}

void computerTalk7() {
  words = "Then it won't work. There's nothing I can do.";
  computerTexbox();
}

void artistTalk7() {
  words = "Why? You say you're an artist.";
  artistTextbox();
}

void computerTalk8() {
  words = "Yes I am. But I paint with codes.";
  computerTexbox();
}

void artistTalk8() {
  words = "Then you're no artist. Artists paint with emotions. From inside of them.";
  artistTextbox();
}

void computerTalk9() {
  words = "Ouch! You got me there! Well, wait, wait.... I think I still have some code my maker put in me.";
  computerTexbox();
}

void artistTalk9() {
  words = "Okay, you go ahead. Let me see the magic you have in you.";
  artistTextbox();
}

void computerTalk10() {
  showTree();
  words = "Can you see it?";
  computerTexbox();
}

void artistTalk10() {
  words = "Oh no. That's only a collection of squares.";
  artistTextbox();
}

void computerTalk11() {
  words = "But some great artists painted this way. Don't you read art history?";
  computerTexbox();
}

void artistTalk11() {
  words = "Great artists? Like who?";
  artistTextbox();
}

void computerTalk12() {
  words = "Ah! Pablo Picasso and Georges Braque are some of them. They made waves with cubism.";
  computerTexbox();
}

void artistTalk12() {
  words = "But they painted all by themselves. No one put a line of code in them.";
  artistTextbox();
}

void computerTalk13() {
  words = "Well, but somehow someone taught them. They were at some time apprentices.";
  computerTexbox();
}

void artistTalk13() {
  words = "Well, but you came not for me to teach you. You said you could do better than I.";
  artistTextbox();
}

void computerTalk14() {
  words = "Oops! You got me again.";
  computerTexbox();
}

void artistTalk14() {
  words = "Even Piccaso's work have been critized as scattering the beauty in art.";
  artistTextbox();
}

void computerTalk15() {
  words = "Really? Who said so?.";
  computerTexbox();
}

void artistTalk15() {
  words = "New York times says Cubism fractured the delicate world of art.";
  artistTextbox();
}

void computerTalk16() {
  words = "Okay. You win. But I also paint like Michaelangelo. And you can never match me in Realism.";
  computerTexbox();
}

void artistTalk16() {
  words = "Okay. Go ahead and demonstrate it let me see.";
  artistTextbox();
}

void computerTalk17() {
  showChidi();
  words = "Do you see that?. That's a realistic painting of my maker. I could win an award with it.";
  computerTexbox();
}

void artistTalk17() {
  words = "That's nothing but a photo. You only copied a photo verbatim, from camera.";
  artistTextbox();
}

void computerTalk18() {
  showTreePointilism();
  words = "What about this cool painting of the tree again, with dots? This is called Pointilism.";
  computerTexbox();
}

void artistTalk18() {
  words = "Mr. Computer. Art is about Creativity. What you're doing is Calculation.";
  artistTextbox();
}

void computerTalk19() {
  words = "Ugh. The final blow. I surrender.";
  computerTexbox();
}

void artistTalk19() {
  words = "Good. Admit you're dumb.";
  artistTextbox();
}

void computerTalk20() {
  words = "Yes Boss, I'm as dumb as they come.";
  computerTexbox();
}

void artistTalk20() {
  words = "Say: 'I am nothing but a man's tool; no more intelligent than a pair of scissors.'";
  artistTextbox();
}

void computerTalk21() {
  words = "Yes Boss, I am nothing but a man's tool; no more intelligent than a pair of scissors.";
  computerTexbox();
}

void artistTalk21() {
  words = "Good boy. No, good box. Never claim what you're not again.";
  artistTextbox();
}

void computerTalk22() {
  words = "Yes Boss. Thank you Boss.";
  computerTexbox();
}

void artistTalk22() {
  words = "You're welcome. Good bye.";
  artistTextbox();
}
