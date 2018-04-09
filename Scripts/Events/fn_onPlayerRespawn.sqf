/**
 * Copyright © 2018 Ethan OHara, IEthanHD.
 * All Rights Reserved.
 */

//--- Define Script
scriptName "TGH_fnc_onPlayerRespawn: main";
scopeName "main";

//--- Define Params
params [
    ["_unit",   objNull, [objNull]]
];

//--- Set Player Respawn Time
if !(playerRespawntime isEqualTo 45) then {
    setPlayerRespawnTime 45;
};
