# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D basic sample: 'Overlay3D'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, random, lenientops
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

xGraphics3d 1024, 768, 32, 0, 1

xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
let
    mousespeed          = 0.5
    camerasmoothness    = 4.5
var camxa, camya, mxs, mys: float

let camera = xCreateCamera()
camera.xCameraClsColor 64, 64, 64
let light = xCreateLight()

var cube = camera.xCreateCube
cube.xRotateEntity      30.0, 15.0, 0.0
cube.xScaleEntity       0.25, 0.25, 0.25
cube.xPositionEntity    -2.0, 1.35, 5.0
cube.xEntityColor       255, 128, 0

proc garbage(num = 40) =
    for i in 1..num:
        let
            r = rand 128..255
            g = rand 128..255
            b = 383 - r
            obj = xCreateCube()
        obj.xPositionEntity rand -25.0..25.0, rand -25.0..25.0, rand 25.0..45.0
        obj.xEntityColor r, g, b
        obj.xScaleEntity rand 0.75..1.5, rand 0.75..1.5, rand 0.75..1.5

proc CurveValue(newvalue: float, oldvalue: float, increments: int): float =
    if increments >  1:     oldvalue - (oldvalue - newvalue) / increments
    elif increments <= 1:   newvalue
    else: oldvalue

proc cameraControl() =
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

garbage()

var drawOverlay = true

while 0 == KEY_ESCAPE.xKeyHit:
    
    if 57.xKeyHit.bool: drawOverlay = not drawOverlay

    cube.xTurnEntity 0.1, -0.1, 0.1
    cameraControl()
    
    xRenderWorld()
    
    xColor 128, 0, 255
    xRect 35, 35, 210, 210, true
    
    if drawOverlay:
        camera.xCameraClsMode 0, 1
        cube.xShowEntity
        camera.xRenderEntity cube
        camera.xCameraClsMode 1, 1
        cube.xHideEntity
    
    xColor 255, 255, 255
    
    xText 10, xGraphicsHeight() - 60.0, "WASD to move camera"
    xText 10, xGraphicsHeight() - 40.0, "Mouse to rotate camera"
    xText 950, 740, $xTrisRendered()
    
    xFlip()