# Kargo Plugins
This repository contains a number of Kargo plugins written in Bash.
To create a plugin, all you have to do is to create an executable program (in any language) that produces standard output following an specific format.

## Instalation 
To use my plugins install kargos first using provided command. 
```
git clone git@github.com:lipido/kargos.git
cd kargos
kpackagetool5 -t Plasma/Applet --install plasmoid

```
Now you can add the a kargo plasmoid to your panel. You have to configure it to indicate the command or executable.

Installing Kargos_plugins

```
git clone https://github.com/ashish-kus/Kargos-plugins 
mv ./Kargos-plugins ~/.Kargos-plugins

```
## Uses
To configure the plasmoid, right-click on it. The configuration dialog will have three fields:

Path to executable script: The path to the executable script that the plasmoid will run. The path must start with ``` ~/ ``` and be written manually.
Interval: The interval in seconds between each time the plasmoid re-renders.
Rotation delay: The delay in seconds before the plasmoid rotates.

## Plugin example 

```
#!/bin/bash

MICROWATT=$(cat /sys/class/power_supply/BAT0/power_now) # Power counsumption in watt:
WATT=$( echo "scale=2;$MICROWATT / 1000000 "| bc ) 
FINAL=" $WATT W "

echo $FINAL

```

## plugins 


## Contributing
If you would like to contribute to this repository, please fork the repository and submit a pull request.
