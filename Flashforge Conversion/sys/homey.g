; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Thu Feb 20 2020 13:55:53 GMT-0500 (Eastern Standard Time)
G91              ; relative positioning
G1 H2 Z5 F30000  ; lower Z relative to current position
G1 H1 Y200 F3000 ; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y-5 F30000 ; go back a few mm
G1 H1 Y200 F600  ; move slowly to Y axis endstop once more (second pass)
G1 H2 Z-5 F30000 ; lift Z again
G90              ; absolute positioning
