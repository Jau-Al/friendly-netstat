# friendly-netstat

Just give it the execution rights : chmod +x friendly-netstat
then launch it : ./friendly-netstat

With Graphic interface, most of the time : right click → properties → security → allow to execute
Then double-click
With Nautilus, you need to allow scripts execution in Nautilus → Preferences → Behaviour → Executable Text Files → Ask what to do.

Syntax : friendly-netstat [option] [refresh delay in seconds]

Friendly-netstat gives you connected ports and programs or listening servers
The output is also written in connections[time].txt (in this script folder)

Exemple : friendly-netstat c 5

If no refresh delay is specified, refreshes output every 5 sec.
Options :
	c : connections
	l : listening servers
