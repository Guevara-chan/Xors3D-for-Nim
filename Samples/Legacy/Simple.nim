# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D legacy sample: 'Simple'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, lenientops
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

# setup maximum supported AntiAlias Type
xGetMaxAntiAlias().xSetAntiAliasType

# set application window caption
"Simple sample".xAppTitle

# initialize graphics mode
xGraphics3D 800, 600, 32, 0, 1

# hide mouse pointer
xHidePointer()

# enable antialiasing
1.xAntiAlias

# create camera
let camera = xCreateCamera()

# position camera
camera.xPositionEntity 0, 0, -10

# create cube
let cube = xCreateCube()

# loading logo from file
let logoTexture = "media/textures/logo.jpg".xLoadTexture

# texture cube
cube.xEntityTexture logoTexture

# for mouse look
xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
let
    mousespeed = 0.5 
    camerasmoothness = 4.5

# aux proc
proc CurveValue(newvalue: float, oldvalue: float, increments: int): float =
    if increments >  1:     oldvalue - (oldvalue - newvalue) / increments
    elif increments <= 1:   newvalue
    else: oldvalue

# main program loop
var mxs, mys, camxa, camya: float
while 0 == KEY_ESCAPE.xKeyDown:

    # camera control
    if KEY_W.xKeyDown.bool: camera.xMoveEntity 0,    0,    1
    if KEY_S.xKeyDown.bool: camera.xMoveEntity 0,    0,   -1
    if KEY_A.xKeyDown.bool: camera.xMoveEntity -1,   0,    0
    if KEY_D.xKeyDown.bool: camera.xMoveEntity 1,    0,    0
    mxs = CurveValue(xMouseXSpeed() * mousespeed, mxs, camerasmoothness.int)
    mys = CurveValue(xMouseYSpeed() * mousespeed, mys, camerasmoothness.int)
    let fix = (mxs.int mod 360) + (mxs - mxs.int)
    camxa = camxa - fix
    camya = camya + mys
    if camya < -89: camya = -89
    if camya >  89: camya = 89
    xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
    camera.xRotateEntity camya, camxa, 0.0
    
    # turn cube
    cube.xTurnEntity 0, 1, 0
    
    # render scene
    xRenderWorld()
    
    # switch back buffer
    xFlip()