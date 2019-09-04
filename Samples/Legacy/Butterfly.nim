# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D legacy sample: 'Butterfly'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

# initialization
"Butterfly".xAppTitle
xGraphics3D 800, 600, 32, 0, 1

# creating the camera
let cam = xCreateCamera()
cam.xPositionEntity 0, 70, -120
cam.xRotateEntity   15, 0, 0
cam.xCameraClsColor 192, 192, 192

# enabling antialiasing
1.xAntiAlias

# objects loading
let wings = "media/Meshes/ButterflyWings.b3d".xLoadMesh
wings.xRotateEntity 0, 0, -90
let body = "media/Meshes/ButterflyBody.b3d".xLoadMesh
body.xRotateEntity  0, 0, -90

# light source creating
let light = xCreateLight()
light.xRotateEntity -45, 0, 0

# loading effect from file
let butterfly = "media/shaders/IridescentButterfly.fx".xLoadFXFile

# checking if this technique is supported by hardware
if 0 == butterfly.xValidateEffectTechnique "IridescentButterfly":
    echo "Technique is not supported!"
    quit()

# loading textures
let
    tex1 = "media/textures/gradientMap.bmp".xLoadTexture
    tex2 = "media/textures/baseOpacityMap.tga".xLoadTexture
    tex3 = "media/textures/bumpGlossMap.tga".xLoadTexture

# setting the effect and constants
wings.xSetEntityEffect         butterfly
wings.xSetEffectTechnique      "IridescentButterfly"
wings.xSetEffectMatrixSemantic "world_view_proj_matrix", WORLDVIEWPROJ
wings.xSetEffectMatrixSemantic "inv_view_matrix", VIEWINVERSE
wings.xSetEffectTexture        "baseOpacityMap_Tex", tex2
wings.xSetEffectTexture        "bumpGlossMap_Tex", tex3
wings.xSetEffectTexture        "gradientMap_Tex", tex1
wings.xEntityAlpha             0.5

# for mouse look
xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
let
    mousespeed          = 0.5 
    camerasmoothness    = 4.5

# aux proc
proc CurveValue(newvalue: float, oldvalue: float, increments: int): float =
    if increments >  1:     oldvalue - (oldvalue - newvalue) / increments.float
    elif increments <= 1:   newvalue
    else: oldvalue

# main loop
var mxs, mys, camxa, camya: float
while 0 == xKeyDown(1) and 0 == "WM_CLOSE".xWinMessage:
    # camera control
    if KEY_W.xKeyDown.bool: cam.xMoveEntity 0,    0,    1
    if KEY_S.xKeyDown.bool: cam.xMoveEntity 0,    0,   -1
    if KEY_A.xKeyDown.bool: cam.xMoveEntity -1,   0,    0
    if KEY_D.xKeyDown.bool: cam.xMoveEntity 1,    0,    0
    mxs = CurveValue(xMouseXSpeed().float * mousespeed, mxs, camerasmoothness.int)
    mys = CurveValue(xMouseYSpeed().float * mousespeed, mys, camerasmoothness.int)
    let fix = (mxs.int mod 360).float + (mxs - mxs.int.float)
    camxa = camxa - fix
    camya = camya + mys
    if camya < -89: camya = -89
    if camya >  89: camya = 89
    xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
    cam.xRotateEntity camya, camxa, 0.0
    
    # setting the spectator's position
    wings.xSetEffectVector "view_position", cam.xEntityX, cam.xEntityY, cam.xEntityZ    
    # rendering the world
    xRenderWorld()
    
    # fps output
    xColor 0, 0, 0
    xText 10, 10, "FPS: " & $xGetFPS()
    xText 10, 30, "TrisRendered: " & $xTrisRendered()
    
    # drawing
    xFlip()