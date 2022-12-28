MyVar := "102912,134189,194236,197075,33410,33431,34923,37818,40475,45474,48829,59344,77604,88911,90604,109585,130166,131348,144972,152440,183357,188602,188687,191971,33915,48290,58048,60395,60693,63563,68847,70716,91551,149252,156184,197590,117000,124169,125991,128488,132988,139506,33639,67110,89572,96924,104178,109731,115074,125991,143870,147928,154529,158938,159753,177642,183683,184214,184229,186498,189121,33496,42809,53812,57925,57953,76142,87180"
for index, num in numb :=StrSplit(MyVar, ",")
	;
indexori := index
TrayTip, Running, Press keys:`nCTRL ALT M to play in Firefox, 20, 17
^!m::
WinClose, The Mod Archive
if (indexori == 0) {
	indexori := index
}
yo := numb[indexori]
Run, firefox.exe -new-window
WinWait, Mozilla Firefox
a := "https://modarchive.org/index.php?request=view_player&query="
sleep 1000
SendInput %a%
SendInput %yo%
Send {Enter}
WinWait, The Mod Archive
TrayTip, Now playing, Module:`n%yo%, 20, 17
WinMinimize ; Use the window found by WinWait.
indexori -= 1
Return