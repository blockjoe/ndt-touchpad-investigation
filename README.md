# Nexdock Touch Touchapd Investigation

I'm leaving here anything that I used to debug the issues that I found with my new 
Nexdock Touch touchpad.

## Dependencies

- xinput
- libinput-tools
- xev
- neofetch 

## Usage/Explanation

scripts: This is the directory that houses any scripts I used while testing.
  - get-gesture-devives.sh: This will list any devices that libinput reports support gestures.
  - get-input-devices.sh: This will list the devices that xinput detects
  - get-system-info.sh: This will give an overview of the current system using neofetch.
  - view-keyboard-events.sh: This will use xev to capture any keyboard events that occur.
  - view-mouse-events.sh: This will use xev to capture any mouse events that occur.

tests: This is the directory that houses the results of any devices/configurations I tested on.
  - standard-latop: This is an old Alienware laptop that I've configured to support touchpad gestures through libinput-gestures.
