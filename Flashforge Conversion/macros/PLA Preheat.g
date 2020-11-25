; PLA Preheat Macro
; Sets the temperatures to preheat for PLA printing

T0                                     ; make T0 active
G10 P0 S205 R170                       ; set temps to 205 active and 170 standby
M140 S65 R45                           ; set bed temps to 65 and 45