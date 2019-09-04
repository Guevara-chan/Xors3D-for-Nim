# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D basic sample: 'Post Effect'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os
include "../../Xors3D.nim"
"../../".setCurrentDir

var 
    masterCube: Handle
    pe_invertion_enabled = 1
    pe_rgb2brg_enabled = 0

#xCreateLog(#LOG_HTML, #LOG_INFO, "PostEffect_00.html")
"Simple invertion post-effect".xAppTitle
xGraphics3d 1024, 768, 32, 0, 1

xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
let
    mousespeed          = 0.5
    camerasmoothness    = 4.5
    camera              = xCreateCamera()
    PostEffect_Invertion= "media/shaders/simple_posteffect_invertion.fx".xLoadPostEffect
    PostEffect_RGB2BRG  = "media/shaders/simple_posteffect_rgb2brg.fx".xLoadPostEffect
var
    camxa = 0.0
    camya = 0.0
    mxs = 0.0
    mys = 0.0

camera.xCameraClsColor 32, 64, 128
let light = xCreateLight()

### Procedures.
proc CurveValue(newvalue: float, oldvalue: float, increments: int): float =
    if increments >  1:     oldvalue - (oldvalue - newvalue) / increments.float
    elif increments <= 1:   newvalue
    else: oldvalue

proc CubeField(num = 10) =
    var i = 0     
    for x in 0..num - 1:
        for y in 0..num - 1:
            let obj = if x == 0 and y == 0:
                masterCube = xCreateCube()
                masterCube
            else: masterCube.xCopyEntity

            obj.xPositionEntity (x.float-num.float*0.5+0.5) * 2.5, (y.float-num.float*0.5+0.5) * 2.5, num.float * 4.0
            let
                r = x * 255 div num
                g = y * 255 div num
                b = 255 - g
            obj.xEntityColor r, g, b

proc CameraControl() =
    if KEY_W.xKeyDown.bool: camera.xMoveEntity 0,    0,    1
    if KEY_S.xKeyDown.bool: camera.xMoveEntity 0,    0,   -1
    if KEY_A.xKeyDown.bool: camera.xMoveEntity -1,   0,    0
    if KEY_D.xKeyDown.bool: camera.xMoveEntity 1,    0,    0
    mxs = CurveValue(xMouseXSpeed().float * mousespeed, mxs, camerasmoothness.int)
    mys = CurveValue(xMouseYSpeed().float * mousespeed, mys, camerasmoothness.int)
    let fix = (mxs.int mod 360).float + (mxs - mxs.int.float)
    camxa = camxa - fix
    camya = camya + mys
    if camya < -89: camya = -89
    if camya >  89: camya = 89
    xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
    camera.xRotateEntity camya, camxa, 0.0

proc PostEffectControl() =
    if KEY_1.xKeyHit != 0:
        pe_invertion_enabled = 1 - pe_invertion_enabled
        if pe_invertion_enabled.bool: 0.xSetPostEffect PostEffect_Invertion else: 0.xSetPostEffect 0
    if KEY_2.xKeyHit != 0:
        pe_rgb2brg_enabled = 1 - pe_rgb2brg_enabled
        if pe_rgb2brg_enabled.bool: 1.xSetPostEffect PostEffect_RGB2BRG else: 1.xSetPostEffect 0

proc PrintInfo() =
    var state = if pe_invertion_enabled == 1: "DISABLE" else: "ENABLE"
    xColor  255, 128, 64, 128
    xRect   9, 9, 262, 62, false
    xColor  0, 0, 0, 128
    xRect   10, 10, 260, 60, true
    xText   25, 20, "Press '1' to " & state & " Invertion posteffect."
    state = if pe_rgb2brg_enabled == 1: "DISABLE" else: "ENABLE"
    xText   25, 40, "Press '2' to " & state & " RGB2BRG posteffect."

proc Draw2D() =
    xColor 255, 128, 0, 255
    xRect 20, xGraphicsHeight() - 40, xGraphicsWidth() - 40, 30, true
    xColor 128, 0, 255, 255
    xText xGraphicsWidth() / 2, (xGraphicsHeight() - 25).float, "We can post process 2d graphics too", true, true

CubeField()
### End Procedures.

if pe_invertion_enabled.bool: 0.xSetPostEffect PostEffect_Invertion
if pe_rgb2brg_enabled.bool:  0.xSetPostEffect PostEffect_RGB2BRG

while 0 == KEY_ESCAPE.xKeyHit:    
    PostEffectControl()
#   CameraControl()
    xRenderWorld()
    Draw2D()
    xRenderPostEffects()
    PrintInfo()
    xFlip()