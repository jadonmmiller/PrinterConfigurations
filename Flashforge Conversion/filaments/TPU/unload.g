; Filament unload file for Duet Maestro (firmware version 1.21)
; executed when a filament is unloaded

G90                                                ; Absolute moves
G1 X0 Y0 F6000                                     ; Go to heating position
M291 P"Please wait while the nozzle is heating." R"Unloading TPU"
G10 S240                                           ; Set temp
M116                                               ; Wait for heatup
M291 P"Unloading Filament..." R"Unloading TPU"
M83                                                ; Relative extruder coordinates
G1 E15 F300                                        ; Feed filament
G1 E-150 F300                                      ; Unload filament
M400                                               ; Wait for moves to complete
M292                                               ; Hide messages
G10 S0                                             ; Turn off heaters