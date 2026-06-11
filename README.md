# <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/TeamSpeak_logo.svg/1280px-TeamSpeak_logo.svg.png" style="height: 32px; width: 32px;"> Unofficial ts3server blacklist fix
This repository is made to bypass blacklist of cracked Teamspeak servers, Basically, Official Teamspeak blacklist servers check the server you join if is not using official ts3server - then don't let the user join, Here's the errors you get while joining a unofficial ts3server:
```
**Failed to connect to server: server blacklisted**
**This server is blacklisted. Refusing to connect.**
```
# ✅ Only ways to fix it
1. Using an unofficial Teamspeak client like [TeaClient](https://teaspeak.de/gb/#section-download)
2. Refusing Teamspeak blacklist servers by redirecting them to localhost (The reason of this repository to be made)
3. Stop using [Teamspeak](https://www.teamspeak.com/) and switch to [Discord](https://discord.com/)?
# 👢 Refusing Teamspeak blacklist servers - Step by step on Windows
First of all, I have already made an ready-to-use batch script for this so you can use it, [Download from here](https://github.com/Praxime/ts3server-bypass/releases)
1. Open Notepad as administrator
2. At the top bar of Notepad, Go to File, Open, and open this location as a file: `C:\Windows\System32\drivers\etc\hosts`
3. Add a blank line at the end of the hosts file and paste this:
```
127.0.0.1 accounting.teamspeak.com
127.0.0.1 blacklist.teamspeak.com
127.0.0.1 blacklist2.teamspeak.com
```
4. You are ready to go, This will refuse & redirect all of those checking servers to your localhost, Try joining an unofficial Temaspeak server now.
# ❤️ | Support
Support me by giving a little **star** to this Repo.

You can donate me [here](https://coffeebede.com/praxime)(IRT)!
