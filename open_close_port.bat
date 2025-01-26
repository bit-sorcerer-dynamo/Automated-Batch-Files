@echo off

:: allow port 80
netsh advfirewall firewall add rule name="Allow HTTP" dir=in action=allow protocol=TCP localport=80
echo Port 80 Allowed On the Computer

pause

:: don't allow port 80
netsh advfirewall firewall delete rule name="Allow HTTP"
echo Port 80 Not Allowed on The Computer