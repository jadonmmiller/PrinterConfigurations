; Filament load file for Duet Maestro (firmware version 1.21)
; executed when a filament is loaded

G91                                                ; Absolute moves
G1 X263 Y0 F6000                                   ; Go to heating position
M291 P"Please wait while the nozzle is heating." R"Loading ABS" ; Display message
G10 S255                                           ; Set temp
M116                                               ; Wait for heatup
M291 P"Feeding Filament..." R"Loading ABS"         ; Display message
M83                                                ; Relative extruder coordinates
G1 E150 F300                                       ; Feed filament
M400                                               ; Wait for moves to complete
M292                                               ; Hide messages
G10 S0                                             ; Turn off heaters