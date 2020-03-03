; Filament unload file for Duet Maestro (firmware version 1.21)
; executed when a filament is unloaded

M291 P"Please wait while the nozzle is heating." R"Unloading TPU" ; Display message
G10 S230                                           ; Set temp
M116                                               ; Wait for heatup
M291 P"Unloading Filament..." R"Unloading TPU"     ; Display message
M83                                                ; Relative extruder coordinates
G1 E15 F1000                                       ; Feed filament
G1 E-150 F1000                                     ; Retract filament
M400                                               ; Wait for moves to complete
M292                                               ; Hide messages
G10 S0                                             ; Turn off heaters