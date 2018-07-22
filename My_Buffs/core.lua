SLASH_RELOADUI1 = "/rl" -- for quicker reloading
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" -- for quicker access to frame stack
SlashCmdList.FRAMESTK = function()
    LoadAddOn('Blizzard_DebugTools')
    FrameStackTooltop_Toggle()
end

-- to be able to use the left and right arrows in the edit box
-- without rotating your character
for i=1, NUM_CHAT_WINDOWS do
    _G["ChatFrame" .. i .. "EditBox"]:SetAltArrowKeyMode(false) 
end

----------------------------------------

local UIConfig = CreateFrame("Frame", "My_BuffFrame", UIParent, "BasicFrameTemplateWithInset");

--[[
CreateFrame Arguments:
1. The type of frame = "Frame"
2. The global frame name = "My_BuffFrame"
3. The Parent frame (Not a string)
4. A comma separated list (string list) of xml templates to inherit from 
- this doesn't need to be a comma separated list however
]]--

UIConfig:SetSize(300,360); -- width and heaigh
UIConfig:SetPoint("CENTER", UIParent,"CENTER"); --poiunt, relativeFrame,relativePoint,xOffset,yOffset

--[[
point and relativePoint("CENTER") could have been any of the options: 
"TOPLEFT", "TOP", "TOPRIGHT", "LEFT", "CENTER", "RIGHT", "BOTTOM", "BOTTOMLEFT", "BOTTOMRIGHT"
]]--

--UIConfig is the parent frame for all other child frames and layers
-- regions we will add on to it, to make it graphical


UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0);
UIConfig.title:SetText("My buffs");
--UIConfig.title:SetFont("Fonts\\FRIZQT__.ttf", 11, "OUTLINE");


---------------------------------
-- Buttons
---------------------------------
-- Save Button:
UIConfig.saveBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.saveBtn:SetPoint("CENTER", UIConfig, "TOP", 0, -70);
UIConfig.saveBtn:SetSize(140, 40);
UIConfig.saveBtn:SetText("Save");
UIConfig.saveBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.saveBtn:SetHighlightFontObject("GameFontHighlightLarge");

--UIConfig.saveBtn:SetDisabledFontObject(" "); -- requires a name (cannot be empty!)

-- Reset Button:
UIConfig.resetBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.resetBtn:SetPoint("TOP", UIConfig.saveBtn, "BOTTOM", 0, -10);
UIConfig.resetBtn:SetSize(140, 40);
UIConfig.resetBtn:SetText("Reset");
UIConfig.resetBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.resetBtn:SetHighlightFontObject("GameFontHighlightLarge");

-- Load Button:
UIConfig.loadBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.loadBtn:SetPoint("TOP", UIConfig.resetBtn, "BOTTOM", 0, -10);
UIConfig.loadBtn:SetSize(140, 40);
UIConfig.loadBtn:SetText("Load");
UIConfig.loadBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.loadBtn:SetHighlightFontObject("GameFontHighlightLarge");


---------------------------------
-- Sliders
---------------------------------
-- Slider 1:
UIConfig.slider1 = CreateFrame("SLIDER", nil, UIConfig, "OptionsSliderTemplate");
UIConfig.slider1:SetPoint("TOP", UIConfig.loadBtn, "BOTTOM", 0, -20);
UIConfig.slider1:SetMinMaxValues(1, 100);
UIConfig.slider1:SetValue(50); --default value to start off with
UIConfig.slider1:SetValueStep(30);
UIConfig.slider1:SetObeyStepOnDrag(true); -- SetValueStep only works if this line is included

-- Slider 2:
UIConfig.slider2 = CreateFrame("SLIDER", nil, UIConfig, "OptionsSliderTemplate");
UIConfig.slider2:SetPoint("TOP", UIConfig.slider1, "BOTTOM", 0, -30);
UIConfig.slider2:SetMinMaxValues(1, 100);
UIConfig.slider2:SetValue(40);
UIConfig.slider2:SetValueStep(30);
UIConfig.slider2:SetObeyStepOnDrag(true);

---------------------------------
-- Check Buttons
---------------------------------
-- Check Button 1:
UIConfig.checkBtn1 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButtonTemplate");
UIConfig.checkBtn1:SetPoint("TOPLEFT", UIConfig.slider1, "BOTTOMLEFT", -10, -70);
UIConfig.checkBtn1.text:SetText("My Check Button!");

-- Check Button 2:
UIConfig.checkBtn2 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButtonTemplate");
UIConfig.checkBtn2:SetPoint("TOPLEFT", UIConfig.checkBtn1, "BOTTOMLEFT", 0, -10);
UIConfig.checkBtn2.text:SetText("Another Check Button!");
UIConfig.checkBtn2:SetChecked(true);