/**
 * Copyright © 2018 Ethan OHara, IEthanHD.
 * All Rights Reserved.
 */

////////////////////////////////////////////////////////////////////////////
class RscDisplayMainMenu {
    idd = 1001;
    name = "RscDisplayMainMenu";
    onLoad = "uiNamespace setVariable ['RscDisplayMainMenu', _this select 0];";
    onUnLoad = "uiNamespace setVariable ['RscDisplayMainMenu', nil];";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {
        class Background_1100: RscText
        {
            idc = 1100;
            text = "";
            x = 0 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 1 * safezoneW;
            h = 1 * safezoneH;
            ColorBackground[] = {0,0,0,0.694117};
        };
    };
    class controls {
        class Structured_1102: RscStructuredText
        {
            idc = 1102;
            text = "Welcome";
            x = 0.396215 * safezoneW + safezoneX;
            y = 0.191604 * safezoneH + safezoneY;
            w = 0.29 * safezoneW;
            h = 0.074074 * safezoneH;
            ColorBackground[] = {0.941176,0.972549,1,1};
            ColorText[] = {0,0,0,1};
            font = EtelkaMonospacePro;
        };
    };
};
////////////////////////////////////////////////////////////////////////////
