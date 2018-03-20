# ᵔᴥᵔ Tmux - Runtime configuration

> I mostly use tmux as a session manager not really using it for multiplexing

So tmux and other options like screen are what we call terminal multiplexer session managers. That means that you can have active/attached/deteached sessions that multiple users can access on the same time or let run in background. It's like what VNC can do for windows but just it's for Terminals instead and multiple users can connect to your session at the same time :)

So how is this useful for me ? Well I'll try to list a few reasons but of course it makes most sense on remote machines like servers and routers or other linux hardware that's always on. However on a workstation it can be useful to. I simply ude it as a session manager to house my "extra windows/tabs" or split panels and such so that I can keep iTerm2 clean så when I fullscreen iTerm2 I get a clean fullscreen look.

**But let's talk about real scenario uses that I use it for**

 - SSH into a server, attach my tmux session and now I have a complete work environment ready to go with etc. 1 work prompt, 1 irc/chat window, 1 devons terminal with split panels and stop and so on and perhaps 1 development window where my vim ide is loaded and ready. 

- SSH to my router and attach the tmux, now I have a window with my "dashboard" that has like network speed stats, open ports and so on in split panels making it a nice overview. Next window has like IDS and next window has package inspection and so on. Again, a fully ready environment so I don't have to make like 5 connections to my router to get all these tabs/windows up.

- Also it's worth noticing that tmux can give you really nice extra information and tend to renaming tabs/window titles and so on. Also as tmux has it's own "prompt" or "information bar" you really get much more details while working.

![tmux Screenshot](MacOS/tmux/screenshot1.png?raw=true "tmux Screenshot")

![tmux Screenshot](MacOS/tmux/screenshot2.png?raw=true "tmux Screenshot")

