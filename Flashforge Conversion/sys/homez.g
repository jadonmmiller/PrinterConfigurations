; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Thu Feb 20 2020 13:55:54 GMT-0500 (Eastern Standard Time)
G91                       ; relative positioning
G1 H2 Z5 F30000           ; lower Z relative to current position
G90                       ; absolute positioning
G1 X71.25 Y77.75 F30000   ; go to first probe point
M558 F900 A1              ; configure probe for speed
M401                      ; deploy Z-probe
G4 P250                   ; wait for Z-probe to deploy
G30                       ; home Z by probing the bed (first pass)
M558 F120 A5 S0.010       ; reset probe to default
G30                       ; home Z by probing the bed (second pass)
M402                      ; retract Z-probe
G1 Z20 F30000             ; lower Z relative to current position

