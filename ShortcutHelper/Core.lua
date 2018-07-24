SLASH_OPENCOMMAND1 = '/opn';
local function handler(msg)
    if msg == 'esc' then
        ToggleFrame(GameMenuFrame)
        elseif msg == 'b' then
        OpenAllBags() 
         elseif msg == 'b2' then
        ToggleBag(1)
        elseif msg == 'b3' then
        ToggleBag(2)
        elseif msg == 'b4' then
        ToggleBag(3)
        elseif msg == 'b5' then
        ToggleBag(4)
         elseif msg == 'shiftb' or msg == 'b1' then
        ToggleBackpack()
         elseif msg == 'c' then
        ToggleFrame(CharacterFrame)
         elseif msg == 'u' then
        ToggleCharacter("ReputationFrame") 
        elseif msg == 'n' then
        securecall(ToggleTalentFrame)
          elseif msg == 'y' then
        securecall(ToggleAchievementFrame)
          elseif msg == 'i' then
        securecall(PVEFrame_ToggleFrame)
         elseif msg == 'k' then
        ToggleSpellBook(BOOKTYPE_PROFESSION)
          elseif msg == 'p' then
        ToggleFrame(SpellBookFrame)
        elseif msg == 'l' or msg == 'm' then
        ToggleQuestLog()
        elseif msg == 'j' then
        ToggleGuildFrame()
           elseif msg == 'o' then
        ToggleFrame(FriendsFrame)
          elseif msg == 'shiftj' then
        ToggleEncounterJournal()
        elseif msg == 'shiftp' then
        ToggleCollectionsJournal()
         elseif msg == 'fr' then
       ToggleFramerate()
          elseif msg == 'sc' then
     Screenshot()
        elseif msg == 't' then
        ToggleChannelFrame()
          elseif msg == 'shiftm' then
        ToggleFrame(BattlefieldMapFrame)
       else 
        print("|cFFec8001Shortcut Helper - Available commands:")
        print("esc - Game menu")
        print("b - Open all bag")
        print("b1 - 1st bag")
        print("b2 - 2nd bag")
        print("b3 - 3rd bag")
        print("b4 - 4th bag")
        print("b5 - 5th bag")
        print("shiftb - 1st bag")
        print("c - Character panel")
        print("u - Reputation panel")
        print("n - Specialization panel")
        print("y - Achievements")
        print("i - Group Finder")
        print("k - Professions")
        print("p - Spellbook")
        print("l - Quest Log")
        print("m - Map")
        print("shiftm - Minimap in the corner")
        print("j - Guild and Communities")
        print("o - Friends panel")
        print("shiftj - Adventure Guide")
        print("shiftp - Collections")
        print("t -  Chat Channels")
        print("fr - Show Framerate")
        print("sc - Take screenshot")
    end
end
SlashCmdList["OPENCOMMAND"] = handler; 

