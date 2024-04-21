# deMounce
## Scroll Direction Debouncer for AutoHotkey

This AutoHotkey script enhances scrolling behavior by enforcing a threshold for direction changes. It requires a set number of scrolls in the new direction before acknowledging the change, preventing unintentional direction reversals due to accidental scroll actions.

## Features

- **Direction Threshold**: Requires multiple consecutive scrolls in a new direction to register a direction change.
- **Customizable Threshold**: Easy to modify the number of scrolls required for a direction change.

## Requirements

- AutoHotkey v1.1.33.02 or newer.

## Installation

1. Ensure AutoHotkey is installed on your system. If not, download and install from [AutoHotkey's official site](https://www.autohotkey.com/).
2. Download the `ScrollDirectionDebouncer.ahk` script.
3. Place the script in a suitable directory on your system.

## Usage

To use the script:
1. Double-click the `ScrollDirectionDebouncer.ahk` file to run it. The script will sit in the system tray and operate in the background.
2. Use your mouse wheel to scroll up or down. The script requires two consecutive scrolls in the same direction to recognize a change in scroll direction.

## Customization

You can customize the threshold for recognizing a scroll direction change by modifying the `transitionThreshold` variable in the script:

```ahk
transitionThreshold := 2 ; Change this value to increase or decrease the sensitivity.

