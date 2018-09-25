-- Free Fire Battleground
-- App Code Template
-- By Code Zero

-- Config
ShowUI		= false
SysRange	= gg.REGION_CODE_APP | gg.REGION_CODE_SYS | gg.REGION_BAD
CodeRange = gg.REGION_CODE_APP
CARange = gg.REGION_C_ALLOC | gg.REGION_C_HEAP
BARange = gg.REGION_C_BSS | gg.REGION_ANONYMOUS

sieg = gg.SIGN_EQUAL
Type = gg.PROT_EXEC
Count = 1000
ScriptSpeed = 350

-- Variable
CZ = {}
CZ["Avatar"] = {}
CZ["Avatar"].address = "40800000h"
CZ["Avatar"].white = "44613f36h"
CZ["Avatar"].black = "c4613f36h"
CZ["Avatar"].sig = "0000000ch;00000031h;000000bdh;40800000h::29"
local zAva	= "On"
local zAve	= "On"

CZ["Vehicle"] = {}
CZ["Vehicle"].address = "3f800000h"
CZ["Vehicle"].on = "42c83e10h"
CZ["Vehicle"].sig = "3f800000h;00000002h;c0000007h"
local zVah	= "On"
local zVeh	= "On"

CZ["Night"] = {}
CZ["Night"].address = "358637bdh"
CZ["Night"].on = "bf9b26cah"
CZ["Night"].sig = "3f13cd3ah;3c23d70ah;358637bdh"
local zNig	= "On"

CZ["Map"] = {}
CZ["Map"].addressR = "3f000000h"
CZ["Map"].addressB = "3f800000h"
CZ["Map"].RY = "43fa4588h"
CZ["Map"].BW = "c3fa4588h"
CZ["Map"].sig = "3f000000h;3f800000h;d01502f9h;501502f9h::22"
local zMap	= "On"
local zMep	= "On"

CZ["Opc"] = {}
CZ["Opc"].sig = "0.1;0.2;0.3"
CZ["Opc"].type = gg.TYPE_DOUBLE

function PopupBox(Caption, Text)
     gg.alert('╳ ' .. Caption .. ' ╳ \n' .. Text)
end

-- Main Code
gg.setVisible(ShowUI)
gg.clearResults()

PopupBox
	(
	"· Free Fire ·", 
	" • Be Sure to SUBSCRIBE ! ッ.\n\n 『Code Zero』"
	)

function OPC()
	gg.setRanges(SysRange)
	gg.searchNumber(CZ["Opc"].sig, CZ["Opc"].type, false, sieg, 0, -1)
	gg.getResults(Count)
	gg.clearResults()
	gg.toast('◈ Bypass Complete ◈')
end

function AVAHandler()
	gg.setRanges(CARange)
	if zAva == "On" then
		gg.searchNumber(CZ["Avatar"].sig, Type, false, sieg, 0, -1)
		gg.searchNumber(CZ["Avatar"].address, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Avatar"].white, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Avatar White On ◈')
		zAva = "Off"
	elseif zAva == "Off" then
		gg.searchNumber(CZ["Avatar"].white, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Avatar"].address, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Avatar White Off ◈')
		zAva = "On"
	end
end

function AVEHandler()
	gg.setRanges(CARange)
	if zAve == "On" then
		gg.searchNumber(CZ["Avatar"].sig, Type, false, sieg, 0, -1)
		gg.searchNumber(CZ["Avatar"].address, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Avatar"].black, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Avatar Black On ◈')
		zAve = "Off"
	elseif zAve == "Off" then
		gg.searchNumber(CZ["Avatar"].black, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Avatar"].address, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Avatar Black Off ◈')
		zAve = "On"
	end
end

function VEHHandler()
	gg.setRanges(CARange)
	if zVeh == "On" then
		gg.searchNumber(CZ["Vehicle"].sig, Type, false, sieg, 0, -1)
		gg.searchNumber(CZ["Vehicle"].address, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Vehicle"].on, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Flat Vehicle On ◈')
		zVeh = "Off"
	elseif zVeh == "Off" then
		gg.searchNumber(CZ["Vehicle"].on, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Vehicle"].address, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Flat Vehicle Off ◈')
		zVeh = "On"
	end
end

function NIGHandler()
	gg.setRanges(CodeRange)
	if zNig == "On" then
		gg.searchNumber(CZ["Night"].sig, Type, false, sieg, 0, -1)
		gg.searchNumber(CZ["Night"].address, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Night"].on, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Night Mode On ◈')
		zNig = "Off"
	elseif zNig == "Off" then
		gg.searchNumber(CZ["Night"].on, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Night"].address, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Night Mode Off ◈')
		zNig = "On"
	end
end

function MAPHandler()
	gg.setRanges(CARange)
	if zMap == "On" then
		gg.searchNumber(CZ["Map"].sig, Type, false, sieg, 0, -1)
		gg.searchNumber(CZ["Map"].addressR, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Map"].RY, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Hell Mode On ◈')
		zMap = "Off"
	elseif zMap == "Off" then
		gg.searchNumber(CZ["Map"].RY, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Map"].addressR, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Hell Mode Off ◈')
		zMap = "On"
	end
end

function MEPHandler()
	gg.setRanges(CARange)
	if zMep == "On" then
		gg.searchNumber(CZ["Map"].sig, Type, false, sieg, 0, -1)
		gg.searchNumber(CZ["Map"].addressB, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Map"].BW, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Heaven Mode On ◈')
		zMep = "Off"
	elseif zMep == "Off" then
		gg.searchNumber(CZ["Map"].BW, Type, false, sieg, 0, -1)
		gg.getResults(Count)
		gg.editAll(CZ["Map"].addressB, Type, false, sieg, 0, -1)
		gg.clearResults()
		gg.toast('◈ Heaven Mode Off ◈')
		zMep = "On"
	end
end

while (true) do
	if gg.isVisible(true) then
		gg.setVisible(false) 
	
	i = gg.choice(
			{
				"⊗ Bypass / Open Code",
				"⊗ Turn "..zAva.." Avatar Color White",
				"⊗ Turn "..zAve.." Avatar Color Black",
				"⊗ Turn "..zVeh.." Flat Vehicle",
				"⊗ Turn "..zNig.." Night Mode",
				"⊗ Turn "..zMap.." Hell Mode",
				"⊗ Turn "..zMep.." Heaven Mode",
				"⊗ Quit Script"
			}, 
		nil, "⊗ Free Fire ⊗ \n • Tap For On / Off \n • Cancle For Minimize")
		if i == 1 then OPC() end
		if i == 2 then AVAHandler() end
		if i == 3 then AVEHandler() end
		if i == 4 then VEHHandler() end
		if i == 5 then NIGHandler() end
		if i == 6 then MAPHandler() end
		if i == 7 then MEPHandler() end
		if i == 8 then break end
	end 
	gg.sleep(ScriptSpeed)
end

-- End
PopupBox
	(
	"· www.youtube.com/c/codezero000 ·", 
	"Don't forget to leave feedback !"
	)
os.exit()
