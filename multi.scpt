-- Usage: osascript multi.scpt <command> <N tabs>

on run argv
    tell application "iTerm"
        activate   
	create tab with default profile
        repeat (item 2 of argv) times
            tell current window 
      	       create tab with default profile
   	           tell current session
   		       write text (item 1 of argv)
   		       do shell script "/bin/sleep 0.01"
   		   end tell
   	    end tell
         end repeat
   
         tell first tab of current window
             close
         end tell
    end tell
end run