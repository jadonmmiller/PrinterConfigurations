; startPrint.g System File
; Executes Commands to be run in the starting gcode of a print.

G29 S1                                     ; Load heightmap from SD card
G1 X0 Y0 Z50 F30000                        ; Move to heating position
M98 P"0:sys/tunes/startPrint.g"            ; Play Tune
M116                                       ; Wait for heat-up
M83                                        ; Relative extruder moves
G90                                        ; Relative moves
G28 Z                                      ; Home Z
G1 E5 F1500                                ; Unretract