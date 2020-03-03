; Resurrect Prologue file for Duet Maestro (firmware version 1.21)
; run when a print is restarted from autosave on power loss
;
; generated by RepRapFirmware Configuration Tool v2 on Mon Apr 01 2019 18:28:18 GMT-0400 (Eastern Daylight Time)

G28 X Y              ; Home X and Y
G29 S1               ; Load Heightmap from SD card
G1 X265 Y290 F6000   ; Move to heating position
M116 H0              ; Wait for bed to reach temp
M116 H1              ; Wait for hotend to reach temp
M83                  ; Relative extrusion
G1 E8 F300           ; Undo retract
M98 Pwipe.g          ; Wipe the nozzle