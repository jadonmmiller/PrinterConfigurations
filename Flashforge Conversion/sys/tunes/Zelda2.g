; Duet 12864 Menu Files
;
; This is a set of menu files for running a 12864 display with a duet3D control board.
;
; Written by Jadon Miller - 2/27/2019
; Partially adapted from the work of tinkerlifeprojects on Github.
;
; File "moveExtruder"
;
; This page controls the extruder to allow loading or unloading filament.
; It holds a temperature control and group of extruder jog commands, with
; a link to the "changeFilament" menu underneath.



; --------------- Header ---------------
text R0 C0 W63 F0 H1 T"Extruder"
image L"imgs/vline.img"
button W64 F0 T"Back" A"return"
image R11 C0 L"imgs/hline.img"


; --------------- Temperature ---------------
; Note: You may need to change this section to fit your heater configuration.
image R16 C28 L"imgs/temp.img"
alter C40 N100 W20 H2
text T" / "
value N0 W20
text T"°C"


; --------------- Move Buttons ---------------
button R30 C6 T"-20 " A"T0 G91 G1 E-20 F400"
button C27 T"-5 " A"T0 G91 G1 E-5 F400"
button C45 T"-1 " A"T0 G91 G1 E-1 F400"
button C64 T"+1 " A"T0 G91 G1 E+1 F400"
button C82 T"+5 " A"T0 G91 G1 E+5 F400"
button C103 T"+20 " A"T0 G91 G1 E+20 F400"


; --------------- Change Filament Button ---------------
button R44 C0 W128 F0 T"Change Filament" A"menu changeFilament"A"menu macros"
button R49 C1 F0 H0 V6 T"- Preheat" A"menu preheat"

; Right Column
button R13 C65 F0 H0 V6 T"- Power" A"menu powerMenu"
button R25 C65 F0 H0 V6 T"- Z Probe" A"menu probeMenu"
button R37 C65 F0 H0 V6 T"- Print Info" A"menu printInfo"
button R49 C65 F0 H0 V6 T"- About" A"menu about"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     