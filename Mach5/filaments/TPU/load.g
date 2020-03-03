; Filament load file for Duet Maestro (firmware version 1.21)
; executed when a filament is loaded

M291 P"Please wait while the nozzle is heating." R"Loading TPU" ; Display message
G10 S250                                           ; Set temp
M116                                               ; Wait for heatup
M291 P"Feeding Filament..." R"Loading TPU"         ; Display message
M83                                                ; Relative extruder coordinates
G1 E150 F1000                                      ; Feed filament
M400                                               ; Wait for moves to complete
M292                                               ; Hide messages
G10 S0                                             ; Turn off heaters