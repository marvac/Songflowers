local HBD = LibStub("HereBeDragons-Pins-2.0")
local Songflowers = {
  ["52.9"] = 87.83,
  ["45.94"] = 85.22,
  ["48.26"] = 75.65,
  ["63.33"] = 22.61,
  ["63.91"] = 6.09,
  ["55.8"] = 10.44,
  ["34.35"] = 52.17,
  ["40.15"] = 56.52,
  ["40.14"] = 44.35;
  ["50.6"] = 13.9;
}

local DragonsBreaths = {
  ["35"] = 59,
  ["50"] = 30,
  ["40"] = 78,
  ["42"] = 14
}

local WhipperRoots = {
  ["49"] = 12,
  ["40"] = 19,
  ["51"] = 18,
  ["43"] = 47,
  ["34"] = 60,
  ["40"] = 85
}

UI_Frame = CreateFrame("Frame", nil, UIParent);

function UIUpdate()
  if(GetSpellBookItemName(1, "spell") ~= nil) then
    UI_Frame:SetScript("OnUpdate", nil);
    UI_Frame = nil;
    SongflowersPopulate();
    NightDragonsPopulate();
    WhipperRootsPopulate();
  end
end

function SongflowersPopulate()
  for x, y in pairs(Songflowers) do
    local frame = CreateFrame("Frame", nil);
    frame:SetWidth(12);
    frame:SetHeight(12);
    local tex = frame:CreateTexture(nil, "BACKGROUND")
    tex:SetAllPoints()
    tex:SetTexture("Interface\\Icons\\spell_holy_mindvision")
    HBD:AddWorldMapIconMap(Songflowers, frame, 1448, tonumber(x) / 100, y / 100, showFlag);
  end
end

function NightDragonsPopulate()
  for x, y in pairs(DragonsBreaths) do
    local frame = CreateFrame("Frame", nil);
    frame:SetWidth(12);
    frame:SetHeight(12);
    local tex = frame:CreateTexture(nil, "BACKGROUND")
    tex:SetAllPoints()
    tex:SetTexture("Interface\\Icons\\inv_misc_food_45")
    HBD:AddWorldMapIconMap(DragonsBreaths, frame, 1448, tonumber(x) / 100, y / 100, showFlag);
  end
end

function WhipperRootsPopulate()
  for x, y in pairs(WhipperRoots) do
    local frame = CreateFrame("Frame", nil);
    frame:SetWidth(12);
    frame:SetHeight(12);
    local tex = frame:CreateTexture(nil, "BACKGROUND")
    tex:SetAllPoints()
    tex:SetTexture("Interface\\Icons\\inv_misc_food_55")
    HBD:AddWorldMapIconMap(WhipperRoots, frame, 1448, tonumber(x) / 100, y / 100, showFlag);
  end
end

UI_Frame:SetScript("OnUpdate", UIUpdate);
