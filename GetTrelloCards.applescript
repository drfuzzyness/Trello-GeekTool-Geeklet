on run
	
	-- Terribly hacked together by Matthew Conto
	-- Very loosly based on the Trello Automator Script
	-- https://github.com/pmhesse/Trello-Mail.app-Automator-Script
	
	
	set theAppKey to "XXX-YOUR-APP-KEY-XXX" -- get your key at https://trello.com/1/appKey/generate
	set theUserToken to "XXX-YOUR-USER-TOKEN-XXX" -- then get your token at https://trello.com/1/authorize?key=**YOURKEY**&name=**YOURAPP**&expiration=never&response_type=token&scope=read
	
	-- NEVER POST OR COMMIT YOUR APP KEYS OR USER TOKENS ONLINE.
	-- Bad things happen to good people.
	
	set success to true
	
	set output to ""
	
	set the standard_characters to "abcdefghijklmnopqrstuvwxyz0123456789 " -- shortcut to filter out characters that wont survive
	tell application "JSON Helper"
		set jsonString to fetch JSON from "https://trello.com/1/members/my/cards?fields=name,labels,due&key=" & theAppKey & "&token=" & theUserToken
		set numCards to count of jsonString
		repeat with ndex from 1 to numCards
			-- get the title
			set cardTitle to |name| of item ndex of jsonString as string
			set output to output & "
[" & cardTitle & "] " -- newlines in applescript are disgusting
			
			-- get the label
			
			if (count of labels of item ndex of jsonString) is greater than 0 then
				set cardLabel to |name| of item 1 of labels of item ndex of jsonString
				set output to output & "
" & cardLabel & " - "
			end if
			
			set cardDue to due of item ndex of jsonString as string
			if cardDue is not "missing value" then
				set dueYear to characters 1 thru 4 of cardDue as string
				set dueMonth to characters 6 thru 7 of cardDue as string
				set dueDate to characters 9 thru 10 of cardDue as string
				set output to output & dueMonth & ", " & dueDate & ", " & dueYear
			end if
			set output to output & "
				"
			
		end repeat
		
		
	end tell
	return output
end run