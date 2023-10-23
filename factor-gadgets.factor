! Copyright (C) 2023 Dave Carlton.
! See https://factorcode.org/license.txt for BSD license.

USING: accessors arrays documents kernel math math.parser
 models models.arrow models.product prettyprint sequences ui
 ui.gadgets ui.gadgets.borders ui.gadgets.buttons ui.gadgets.editors ui.gadgets.labels ui.gadgets.packs
 ui.gadgets.tracks units units.imperial units.si  ;
 
IN: factor-gadgets

WINDOW: gadget-window { { title "Factor Gadgets" } }
    <shelf>
    "Celsius" <label> add-gadget 
    "Fahrenheit" <label> add-gadget
    { 10 0 } >>gap 0.5 >>align { 5 5 } <border>
    >>gadgets
;

TUPLE: gadget-tool < tool ;

: do-gadget-tool ( -- ) 
    [ gadget-tool { 600 300 } set-tool-dim 
    gadget-tool new 
    <shelf>
    "Celsius" <label> add-gadget 
    "Fahrenheit" <label> add-gadget
    add-gadget
    "Gadgets" open-window 
] with-ui
;

