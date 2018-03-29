
waitUntil {!isNull player};
//Edit zombielimit and ztriggerrange to be lower if FPS is high
 
zombielimit=0;		
zombiedamage=0;	
zombierun =0; 		
respawntime =80;	
ztrigger ="House";  
ztriggerrange =120;

//Headless Client Settings - not currently supported 
ZOMusehclient = false; //set to true if using HC
ZOMhclientname = "HC"; //Name of headless Client
 
//Zombies loots adds one random item and vest per zombie from this list
zvest = ["V_TacVest_blk_POLICE","V_Rangemaster_belt","V_BandollierB_khk","V_Press_F"];
zloot = ["0","0","0","0","Chemlight_red"]; //loot in vest 
 

/* XXXXXXXXXXXXXXXXXXXXX  DON'T EDIT BELOW!  XXXXXXXXXXXXXXXXXXXXXXXXX */ 
SideZMB = createCenter independent;
groupZMB = createGroup independent;
sleep 0.1;
fncZcontact = compile preprocessFile "zombie\fnc_Zcontact.sqf";
fncZproximity = compile preprocessFile "zombie\fnc_ZProximity.sqf";
zarray=[];
[]call fncZproximity;
/* XXXXXXXXXXXXXXXXXXXXX  DON'T EDIT XXXXXXXXXXXXXXXXXXXXXXXXX */
