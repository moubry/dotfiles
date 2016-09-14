# Clear the screen of all open windows
# http://apple.stackexchange.com/questions/78937/hide-windows-in-current-desktop-lion
tell application "Finder"
  set visible of every process whose visible is true and name is not "Finder" to false
  close every window
end tell
