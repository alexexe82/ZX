local event = require("event")
local component = require("component")
local computer = require("computer")
local gpu = component.gpu
local term = require("term")
local shell = require("shell")

local keys = {
  enter = 28,
  up = 200,
  down = 208,
}

local indexed = {
{"print"," - функция вывода на экран, чтоб выводить текст по определенным координатам надо задавать их командой term.setCursor(x,y). Предварительно надо указать в программе term = require(`term`)"},
{"while do"," - цикл повторения while true do (тело программы) end - будет беспрерывно повторять программу пока не будет использована команда выхода os.exit() либо условие выхода"},
{"if else"," - "},
{"for do"," - цикл повторения for i = 1,3 print(i) end - повторит цикл 3 раза и выведет на экран построчно 1 2 3. end  в конце цикла указывает на заврешение цикла оператора"},
{"io.read()"," - функция считывания клавиатуры, можно задать переменную вида name = io.read() в этом случае данные в переменную name будут записаны пользователем непосроедственно при выполнений программы"},
{"shell"," - команда shell.execute(`reboot`) запустит консоль со строкой reboot и перезапустит пк, таким образом можно пользоваться консолью из программы. Предварительно надо указать в программе shell = require(`shell`)"},
{""," - "},
{""," - "},
{""," - "},
{""," - "},
{""," - "},
{"exit"," - "},
}
st = 1

function sett()
 term.setCursor(1,3+st)
 print(">>")
end

function menu()
 term.clear()
 for i = 1,#indexed do
  term.setCursor(3,3+i)
  print (indexed[i][1])
 end
 sett()
end

while true do
 menu()
local eventname, _, char, code = event.pull('key_down')
    if eventname == 'key_down' then
      if code == keys.enter then
	   if st == 15 then
	    term.clear()
        os.exit()
	else
	 term.clear()
	 print(indexed[i][1]..indexed[i][2])
	 os.sleep(0.5)
	 local eventname, _, char, code = event.pull('key_down')
     if eventname == 'key_down' then
     menu()
	 end
	end
	   elseif code == keys.up then
	    if st == 1 then
		 st = 12
		else
		 st = st - 1
		end
	   elseif code == keys.down then
	    if st == 12 then
		 st = 1
		else
		 st = st + 1
		end
       end
	 end
end
 

