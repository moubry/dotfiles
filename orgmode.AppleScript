-- orgmode.AppleScript arranges the windows of all the Applications I use on a
-- daily basis across two spaces: Comms Desktop and Orgmode Desktop. This script
-- assumes that you we are logged into the network and have completely opened
-- all of the Applications that it depends on.
--
-- This script also assumes that you've assigned the apps to their relevant desktop
-- via https://www.lifewire.com/assign-mac-apps-to-open-in-specific-desktop-space-2260812
--
-- Desktop 1 (Comms Desktop)
-- Desktop 2 (Orgmode Desktop)
--
-- These `go_to_comms_desktop` and `go_to_orgmode_desktop` functions assume you
-- have turned on Control+N as a shortcut for Mission Control in System Preferences
-- via https://stackoverflow.com/questions/43444636/applescript-to-change-osx-desktop-spaces-not-working

on go_to_comms_desktop()
	tell application "System Events"
		-- Key code 18 is the "1" key
		-- via http://eastmanreference.com/complete-list-of-applescript-key-codes/
		key code 18 using control down
	end tell
end go_to_comms_desktop

on go_to_orgmode_desktop()
	tell application "System Events"
		-- Key code 19 is the "2" key
		-- via http://eastmanreference.com/complete-list-of-applescript-key-codes/
		key code 19 using control down
	end tell
end go_to_orgmode_desktop

on open_new_safari_window()
	tell application "System Events"
		tell process "Safari"
			click menu item "New Window" of menu "File" of menu bar 1
		end tell
	end tell
	tell application "Safari" to activate
end open_new_safari_window

on open_references()
	tell application "Finder"
		-- Open my References folder in Dropbox
		open folder "References" of folder "Dropbox" of folder "sean" of folder "Users" of startup disk

		-- Wait a bit to ensure Finder is ready
		delay 1

		-- Hide the toolbar for the active Finder window (hopefully References)
		-- This hides the sidebar too in macOS Sonoma
		set toolbar visible of front Finder window to false
	end tell
end open_references

-- `menu_click`, by Jacob Rus, September 2006
--
-- Accepts a list of form: `{"Finder", "View", "Arrange By", "Date"}`
-- Execute the specified menu item.  In this case, assuming the Finder
-- is the active application, arranging the frontmost folder by date.
on menu_click(mList)
	local appName, topMenu, r

	-- Validate our input
	if mList's length < 3 then error "Menu list is not long enough"

	-- Set these variables for clarity and brevity later on
	set {appName, topMenu} to (items 1 through 2 of mList)
	set r to (items 3 through (mList's length) of mList)

	-- This overly-long line calls the menu_recurse function with
	-- two arguments: r, and a reference to the top-level menu
	tell application "System Events" to my menu_click_recurse(r, ((process appName)'s (menu bar 1)'s (menu bar item topMenu)'s (menu topMenu)))
end menu_click

on menu_click_recurse(mList, parentObject)
	local f, r

	-- `f` = first item, `r` = rest of items
	set f to item 1 of mList
	if mList's length > 1 then set r to (items 2 through (mList's length) of mList)

	-- either actually click the menu item, or recurse again
	tell application "System Events"
		if mList's length is 1 then
			click parentObject's menu item f
		else
			my menu_click_recurse(r, (parentObject's (menu item f)'s (menu f)))
		end if
	end tell
end menu_click_recurse
