setup = function() {
    size(600, 400);
};

//Background Images
var houseSceneImage = loadImage("https://static1.srcdn.com/wordpress/wp-content/uploads/2021/06/SpongeBob-SquarePants-Conch-Street-houses.jpg");

var patrickHouseImage = loadImage("https://spinnaker-watches.com/cdn/shop/articles/rise_and_shine_074-1701834770027.jpg?v=1701835154");

var squidHouseImage = loadImage("https://i.pinimg.com/736x/a4/a1/a6/a4a1a61d27ccca7551dbb88e5613d26a.jpg");

var spongeHouseImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY-YKCoYSGTgfw6gB39uUWRa-JxEzt_Ffwdg&s");

var krustyHouseImage = loadImage("https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/The_Krusty_Krab.png/1200px-The_Krusty_Krab.png");

var insideHouseImage = loadImage("https://i.pinimg.com/736x/33/e9/31/33e9318abad9a87418c3eace3effae30.jpg");

var kitchenHouseImage = loadImage("https://preview.redd.it/what-do-you-think-is-spongebobs-best-interest-hobby-v0-0z41yxs2nk9d1.jpg?width=640&crop=smart&auto=webp&s=815f2a60e5d1780b6c9fb4c1e40ed02028107abf");

//Variable Declarations
var sceneImage = houseSceneImage;
var sceneText = "Explore each house.  [P - Patrick, W - Squidward, B - SpongeBob]";
var sceneText2 = "Press K to visit the Krusty Krab!";

draw = function(){
    
   drawScene();
drawBubbles();

   if(keyPressed){
     if(key == 'p'){
       sceneImage = patrickHouseImage;   
       sceneText = "He's watching TV!  [s to restart]";
       sceneText2 = "⭐";
     } 
     if(key == 's'){
      sceneImage = houseSceneImage;
      sceneText = "Explore each house.  [P - Patrick, W - Squidward, B - SpongeBob]";
      sceneText2 = "Press K to visit the Krusty Krab!";
    } 
      if(key == 'w'){
    sceneImage = squidHouseImage;
    sceneText = "He's not home...  [s to restart]";
    sceneText2 = "🦑";
    }
      if(key == 'b'){
       sceneImage = spongeHouseImage;   
       sceneText = "He's not home...  [s to restart]";
       sceneText2 = "🧽";
       }
       
       if(key == 'k'){
       sceneImage = krustyHouseImage;   
       sceneText = "Enter? Press Y  [s to restart]";
       sceneText2 = "🍔";
       }
       if(key == 'y'){
       sceneImage = insideHouseImage;   
       sceneText = "There's Squidward! Press L to enter the kitchen. [s to restart]";
       sceneText2 = "🍴";
       }
       if(key == 'l'){
       sceneImage = kitchenHouseImage;   
       sceneText = "Spongebob is hard at work! [s to restart]";
       sceneText2 = "🍽";
       }
       }
       
      if(mousePressed){
      fill(24, 72, 223);
      textSize(50);
      text("𓆝", random(0,600), random(0,400));
      }
       
  
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(16);
   
   text(sceneText, 10, 370);
   text(sceneText2, 10, 390);
};

var drawBubbles = function(){
  var textX = random(5,600);
  var textY = random(5,400);
  fill(115, 220, 232);
  textSize(30);
  text("∘˙○˚.•", textX, textY);
};



