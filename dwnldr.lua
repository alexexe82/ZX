-- пошаговая закачка файлов

local shell = require("shell")
local term = require("term")
local ex = 1
term.clear()
print[[  _            _                               ]]
print[[ (_|   |_/    | |             o                ]]
print[[   |   | __,  | |  _   _  _       __,   _  _   ]]
print[[   |   |/  |  |/  |/  / |/ |  |  /  |  / |/ |  ]]
print[[    \_/ \_/|_/|__/|__/  |  |_/|_/\_/|_/  |  |_/]]
print("                                 miniDOWNLOADER")
print(" ")

while ex ~= 0 or ex ~= "0" do
 print ("Введите URL путь к файлу")
 url = io.read()
 print ("Введите имя для сохранения")
 path = io.read()

 shell.execute("wget " .. url .. " " .. path .. " -fq")

 print (path.." done")
 print (" ")
 print ("Для продолжения введите любой символ, для выхода - 0")
 ex = io.read()
end