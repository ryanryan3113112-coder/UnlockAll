local TargetLevel = 666
local lp = game:GetService("Players").LocalPlayer


lp:SetAttribute("Level", TargetLevel)

task.spawn(function()
    while task.wait(1) do
        if lp:GetAttribute("Level") ~= TargetLevel then
            lp:SetAttribute("Level", TargetLevel)
        end
    end
end)   function sieve_of_eratosthenes(n)
   local is_prime = { }
       for i = 1, n do
           is_prime[i] = 1 ~= i
       end
       for i = 2, math.floor(math.sqrt(n)) do
           if is_prime[i] then
               for j = i* i, n, i do
                   is_prime[j] = false
               end
           end
       end
       return is_prime
   end
   local primes = sieve_of_eratosthenes(420)
   for key, value in pairs(primes) do
       if (value) then
           print("Prime found: " .. key)
       end
   end
end

-- You might be satisfied with your result, but before sharing your work you should
-- use [Minify] (under Miscellaneous) to destroy all local variables and comments.
-- Please note that some pre-configured obfuscate buttons already do this for you ;)
print("How to obfuscate best?")

-- The highest level of obfuscation is done through virtualization,
-- in our case this means we will be running Lua inside Lua using the
-- Ironbrew2 virtulization tool. Ready? click [Demo VM] and see what happens!
