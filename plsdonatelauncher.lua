--Small sign changing script with rainbow colors, updating goals, time, and embedded commands with prefix ">".
--I highly recommend using on 13+ accounts because filtering.
--run this script ONCE YOU CLAIM A STAND!!!!!
-->run turns on autoupdate
-->stop turns off autoupdate
-->mrun turns on automessage
-->mstop turns off automessage
-->goal <ammount> sets the goal to <ammount>
-->text <text> sets the text, can also be set through the mini menu
-->setmessage <index> <message> sets message #<index> to <message>
-->clearmessage <index> sets message #<index> to nothing
-->clearmessages clears all the messages

loadstring([[

--NOTE YOU CAN ALSO USE /e COMMAND OR /emote COMMAND FOR HIDING
--<goal> change to what you want the goal in robux is. also works with >goal NUMBER
local goal = 400

--<text> change to what you want the text to be. also works with >text STRING.
--\n = new line
--/n = does the same thing just used in the embedded commands.
--$goal = Goal: <goal - raised> R$ left! or if its already reached, Goal reached!
--$time = <time> minutes
--$rainbows = <font color="<rainbow color>">
--$rainbowe = </font>
--$rainbowc = <rainbow color>
--$topdonor = Nobody or the top donor since you joined
local text = '$rainbowsSign Script Loaded!$rainbowe'

--<messages> you can set the messages for when people donate.
-->setmessage INDEX MESSAGE = messages[INDEX] = message
-->clearmessage INDEX = messages[INDEX] = nil
-->clearmessages = messages = {}
local messages = {"Thanks for the donation, $user!"; "$user, you're amazing!"; "Thanks for the $ammount robux tip, $user!"}

--<isrunning> Self-explanitory init?
--toggle on with >run
--toggle off with >stop
local isrunning = true

--<messagesAUTO> Sends messages when someone doanates to you.
--toggle on with >mrun
--toggle off with >mstop
local messagesAUTO = true

local v="1.1"]] .. game:HttpGet("https://raw.githubusercontent.com/Random299Person/roblox-scripts-i-guess/main/plsdonate.lua"))()
