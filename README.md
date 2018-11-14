# friendly-netstat

Friendly-netstat shows you connected ports and programs or listening servers every X seconds.

The output is also written in connections[time].txt (in this script folder). The file is refreshed with the terminal output.

## Execution
### Command Line
1. Just give it the execution rights : chmod +x friendly-netstat
2. then launch it : ./friendly-netstat

### Graphic Interface
1. With Graphic interface, most of the time : right click → properties → security → allow to execute
2. Then open a terminal (in most cases, right-click → Open in Terminal) and : ./friendly-netstat


### Usage
Syntax : friendly-netstat [option] [refresh delay in seconds]

Exemple : friendly-netstat c 5

If no refresh delay is specified, refreshes output every 5 sec.

Options :
- c : connections (without servers)
- l : listening servers
