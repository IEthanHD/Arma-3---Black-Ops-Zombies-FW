/**
 * Copyright © 2018 Ethan OHara, IEthanHD.
 * All Rights Reserved.
 */

//--- Set Some Parmas
params [
  ["_mysterybox", objNull, [objNull]]
];

//--- Wait For Activation
_mysterybox setVariable ["inuse", player, false];

//--- Action
if ([7 + random 7, "Collecting Reward", nil, {!isNull _this && {player distance _this < 4} _mysterybox]) then {
  
  //--- Set winner
  _mysterybox setVariable ["inuse", player, true];

  //--- Weighted rewards
  private _message = "";
  private _weight = random 1;
  switch true do {

    //--- GM6 Lynx (0.001%)
    case (_weight >= 0.999): {
      //--- Claim weapon action
      player addAction ["<t color='#ff8800'>Claim GM6 Lynx</t>", {
        if (["Claiming this weapon will replace your current primary weapon and backpack.<br /><br />Are you sure you wish to continue?", "Warning", "Yes", "No"] call BIS_fnc_guiMessage) then {
          player addWeapon "srifle_GM6_F";
          player addPrimaryWeaponItem "optic_lrps";
          removeBackpack player;
          player addBackpack "B_Carryall_cbr";
          for "_i" from 1 to 5 do {player addItemToBackpack "5Rnd_127x108_Mag"};
          for "_i" from 1 to 5 do {player addItemToBackpack "5Rnd_127x108_APDS_Mag"};
          player removeAction (_this select 2);
        };
      }];

      _message = "You have won a GM6 Lynx. Please use the scroll menu to claim it.";
    };

    //--- GM6 Lynx tanoa camo (0.001%)
    case (_weight >= 0.9991): {
    //--- Claim weapon action
      player addAction ["<t color='#ff8800'>Claim GM6 Lynx</t>", {
        if (["Claiming this weapon will replace your current primary weapon and backpack.<br /><br />Are you sure you wish to continue?", "Warning", "Yes", "No"] call BIS_fnc_guiMessage) then {
          player addWeapon "srifle_GM6_ghex_F";
          player addPrimaryWeaponItem "optic_lrps";
          removeBackpack player;
          player addBackpack "B_Carryall_cbr";
          for "_i" from 1 to 5 do {player addItemToBackpack "5Rnd_127x108_Mag"};
          for "_i" from 1 to 5 do {player addItemToBackpack "5Rnd_127x108_APDS_Mag"};
          player removeAction (_this select 2);
        };
      }];

      _message = "You have won a GM6 Lynx (Tanoa Camo). Please use the scroll menu to claim it.";
    };

    //--- RPG-7 (0.001%)
    case (_weight >= 0.998): {
    //--- Claim weapon action
      player addAction ["<t color='#ff8800'>Claim GM6 Lynx</t>", {
        if (["Claiming this weapon will replace your backpack.<br /><br />Are you sure you wish to continue?", "Warning", "Yes", "No"] call BIS_fnc_guiMessage) then {
          player addWeapon "launch_RPG7_F";
          player addPrimaryWeaponItem "optic_lrps";
          removeBackpack player;
          player addBackpack "B_Carryall_cbr";
          for "_i" from 1 to 5 do {player addItemToBackpack "RPG7_F"};
          player removeAction (_this select 2);
        };
      }];

      _message = "You have won a RPG-7. Please use the scroll menu to claim it.";
    };

    //--- Zafir (0.003%)
    case (_weight >= 0.997): {
      //--- Claim weapon action
      player addAction ["<t color='#ff8800'>Claim Zafir</t>", {
        if (["Claiming this weapon will replace your current primary weapon and backpack.<br /><br />Are you sure you wish to continue?", "Warning", "Yes", "No"] call BIS_fnc_guiMessage) then {
          player addWeapon "LMG_Zafir_F";
          player addPrimaryWeaponItem "150Rnd_762x54_Box";
          removeBackpack player;
          player addBackpack "B_Carryall_cbr";
          for "_i" from 1 to 4 do {player addItemToBackpack "150Rnd_762x54_Box"};
          player removeAction (_this select 2);
        };
      }];

      _message = "You have won a Zafir. Please use the scroll menu to claim it.";
    };

    //--- TWS Scope (0.5%)
    case (_weight >= 0.995): {
      //--- Claim weapon item action
      player addAction ["<t color='#ff8800'>Claim TWS Scope</t>", {
        if (player canAdd "optic_tws") then {
          player addItem "optic_tws";
          player removeAction (_this select 2);
        } else {
          ["You do not have enough space in your inventory to claim this item.", "Warning", nil, nil] call BIS_fnc_guiMessage
        };
      }];

      _message = "You have won a TWS Scope. Please use the scroll menu to claim it.";
    };

    //--- M320 LRR (0.006%)
    case (_weight >= 0.994): {
      //--- Claim weapon action
      player addAction ["<t color='#ff8800'>Claim M320 LRR</t>", {
        if (["Claiming this weapon will replace your current primary weapon and backpack.<br /><br />Are you sure you wish to continue?", "Warning", "Yes", "No"] call BIS_fnc_guiMessage) then {
          player addWeapon "srifle_LRR_F";
          player addPrimaryWeaponItem "optic_lrps";
          removeBackpack player;
          player addBackpack "B_Carryall_cbr";
          for "_i" from 1 to 10 do {player addItemToBackpack "7Rnd_408_Mag"};
          player removeAction (_this select 2);
        };
      }];

      _message = "You have won a M320 LRR. Please use the scroll menu to claim it.";
    };

    //--- M320 LRR Tanoa camo (0.006%)
    case (_weight >= 0.9941): {
      //--- Claim weapon action
      player addAction ["<t color='#ff8800'>Claim M320 LRR</t>", {
        if (["Claiming this weapon will replace your current primary weapon and backpack.<br /><br />Are you sure you wish to continue?", "Warning", "Yes", "No"] call BIS_fnc_guiMessage) then {
          player addWeapon "srifle_LRR_tna_F";
          player addPrimaryWeaponItem "optic_lrps";
          removeBackpack player;
          player addBackpack "B_Carryall_cbr";
          for "_i" from 1 to 10 do {player addItemToBackpack "7Rnd_408_Mag"};
          player removeAction (_this select 2);
        };
      }];

      _message = "You have won a M320 LRR (Tanoa Camo). Please use the scroll menu to claim it.";
    };

    //--- VR Suit (1.0%)
    case (_weight >= 0.99): {
      //--- Claim uniform action
      player addAction ["<t color='#ff8800'>Claim Red VR Suit</t>", {
        if (["Claiming this VR Suit will replace your current uniform.<br /><br />Are you sure you wish to continue?", "Warning", "Yes", "No"] call BIS_fnc_guiMessage) then {
          player forceAddUniform "U_O_Protagonist_VR";
          player removeAction (_this select 2);
        };
      }];

      _message = "You have won a Red VR Suit. Please use the scroll menu to claim it.";
    };
  };

  //--- Message
  titleText [_message, "PLAIN"];
};
