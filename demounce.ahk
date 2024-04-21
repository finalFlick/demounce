; This script enforces a threshold for scroll direction changes, requiring several scrolls
; in the new direction before acknowledging the change.

; Initialize variables to track the last scroll direction and the count of transitional scrolls.
lastScroll := ""
transitionCount := 0

; Define the threshold number of transitional scrolls needed to accept a direction change.
transitionThreshold := 2 ; Set how many transitional scrolls are required.

; Function to update scroll direction
UpdateScroll(direction) {
global lastScroll
global transitionCount
transitionCount := 0 ; Reset transition count
lastScroll := direction ; Update last scroll direction
Send % "{Wheel" . direction . "}" ; Send the scroll command
}

; Function to handle scroll direction changes
HandleScroll(currentDirection) {
global lastScroll
global transitionCount
global transitionThreshold

if (lastScroll != "" && lastScroll != currentDirection) {
; If the last scroll direction was different and it has not been cleared
transitionCount++ ; Increment transition count
if (transitionCount < transitionThreshold) {
; If not enough transitions have been made, ignore this scroll
Return
}
}
UpdateScroll(currentDirection) ; Update scroll direction if threshold is met or same direction
}

; WheelUp and WheelDown hotkeys call the HandleScroll function with respective directions.
WheelUp::HandleScroll("Up")
WheelDown::HandleScroll("Down")
