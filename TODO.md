* Mac keyboard settings to make backspace faster: https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x/83923#83923
```
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```
The changes aren't applied until you log out and back in. KeyRepeat can't be set between 2 (30 ms) and 1 (15 ms) though.
* Mac install displaylink drivers for docking station
* install miniconda and create python environments for both linux and mac
* iterm2 turn off bell, also create a profile to save settings
