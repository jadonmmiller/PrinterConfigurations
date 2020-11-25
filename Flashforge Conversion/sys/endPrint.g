; endPrint.g System File
; Runs the commands necessary at the end of a print

M106 P0 S0                                 ; Turn off active cooling
M104 S0                                    ; Turn off extruder
M140 S0                                    ; Turn off bed
G91                                        ; Relative moves
G1 X300 Y200 Z150 E-10 F30000              ; Move head from print and retract
M98 P"0:sys/tunes/endPrint.g"              ; Play Tune