/**
 * Copyright © 2018 Ethan OHara, IEthanHD.
 * All Rights Reserved.
 */

 //--- Events Listed Below
 player addEventHandler ["Killed", {_this call TGH_fnc_onPlayerKilled;}];
 player addEventHandler ["Respawn", {_this call TGH_fnc_onPlayerRespawn;}];