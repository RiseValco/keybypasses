old = hookfunction(game:GetService("StarterGui").SetCore, newcclosure(function(self, ...)
    for _,v in pairs(...) do
       if v:lower():find("anti") then
           return
        end
    end
   return old(self, ...) 
end))


old2 = hookfunction(game.HttpGet, newcclosure(function(self, ...)
    if string.find(..., "Database") then
    return "return {".. game:GetService("Players").LocalPlayer.UserId .."}"
    elseif string.find(..., "Blacklisted") then
    return [[print("grimcity on top")]]
    elseif string.find(..., "AnncMsg") then
        return [[Cracked and fixed my grimcity
https://dsc.gg/grimcity
        ]]
    end
   return old2(self, ...) 
end))


old3 = hookfunction(syn.request, newcclosure(function(req)
   if string.find(req.Url, "Version") then
       return {Body = "Pluto-DaHood-V137-01"}
    end
   return old3(req)
end))

old4 = hookmetamethod(game, "__index", newcclosure(function(self, m)
    if m:lower() == "kick" then
       return wait() 
    end
    return old4(self, m)
end))

repeat
    wait()
until game:IsLoaded() and game:GetService('Players').LocalPlayer.Name

-- This file was generated using Pluto Obfuscator v1
