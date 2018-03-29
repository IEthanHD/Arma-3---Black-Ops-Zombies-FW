////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
////////////////////////////////////////////////////////////////////////////
class GUI_1000 {
    idd = 1000;
    name = "GUI_1000";
    onLoad = "uiNamespace setVariable ['GUI_1000', _this select 0];";
    onUnLoad = "uiNamespace setVariable ['GUI_1000', nil];";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {
        class Background_1102: RscText
        {
            idc = 1102;
            text = "";
            x = 0 * safezoneW + safezoneX;
            y = 0.75 * safezoneH + safezoneY;
            w = 1 * safezoneW;
            h = 0.13 * safezoneH;
            ColorBackground[] = {0,0,0,0.694117};
        };
    };
    class controls {
        class Progressbar_1100: RscProgressBar
        {
            idc = 1100;
            x = 0.23 * safezoneW + safezoneX;
            y = 0.8 * safezoneH + safezoneY;
            w = 0.5 * safezoneW;
            h = 0.05 * safezoneH;
            colorBar[] = {0,0.509803,0,1};
        };
        class Small_1103: RscText
        {
            idc = 1103;
            text = "Bleeding Out";
            x = 0.417048 * safezoneW + safezoneX;
            y = 0.77 * safezoneH + safezoneY;
            w = 0.083333 * safezoneW;
            h = 0.031481 * safezoneH;
            ColorBackground[] = {0,0,0,0};
            ColorText[] = {1,1,1,1};
            font = TahomaB;
        };
    };
};
////////////////////////////////////////////////////////////////////////////
