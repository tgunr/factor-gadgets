! Copyright (C) 2023 Dave Carlton.
! See https://factorcode.org/license.txt for BSD license.

USING: accessors arrays documents kernel math math.parser
 models models.arrow models.product prettyprint sequences ui
 ui.gadgets ui.gadgets.borders ui.gadgets.buttons ui.gadgets.editors ui.gadgets.labels ui.gadgets.packs
 ui.gadgets.tracks units units.imperial units.si syntax  ;
 
IN: factor-gadgets

TUPLE: gadget-tool < tool ;

: do-gadget-tool ( -- ) 
    [ gadget-tool new 
        <shelf>
        "Label A" <label> add-gadget 
        "Label B" <label> add-gadget
        add-gadget
        <world-attributes> open-window 
] with-ui
;

MAIN-WINDOW: gadget-window { { title "Gadgets" } }
    <pile> 1 >>fill 1 >>align 
    
    <shelf> { 4 4 } >>gap
    "label" <label> 
    add-gadget
    
    "label w/border" <label> 
    add-gadget 

    "label" <label>  
    "<labeled-gadget>" <labeled-gadget>
    add-gadget

    add-gadget

    "label" <label> 
    { 4 4 } <border>
    "<labeled-gadget>" <labeled-gadget>
    { 4 4 } <border>
    add-gadget

    "label" <label> "<colored-labeled-gadget>" "red" named-color
    <colored-labeled-gadget>
    { 4 4 } <border>
    add-gadget

    "label" <label> "<framed-labeled-gadget>" "blue" named-color
    <framed-labeled-gadget>
    { 4 4 } <border>
    add-gadget

    >>gadgets
    ;

ALIAS: gw gadget-window 
ALIAS: gt do-gadget-tool 

: runit ( -- ) 
    "factor-gadgets" run ; 
