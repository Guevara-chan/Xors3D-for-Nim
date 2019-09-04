# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D legacy sample: 'Terrain'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os
include "../../xors3d.nim"
"../../".setCurrentDir

xGetMaxAntiAlias().xSetAntiAliasType
"Terrain".xAppTitle
xGraphics3D 1024, 768, 32, 1, 0

# enabling antialiasing
0.xAntiAlias

# setting texture filtering mode
TF_ANISOTROPICX16.xSetTextureFiltering 

# creating the cameta
let cam = xCreateCamera()
cam.xPositionEntity 2048, 0, 2048
cam.xCameraClsColor 192, 192, 192
cam.xCameraRange    0.1, 1000
cam.xCameraFogMode  1
cam.xCameraFogColor 130, 130, 150
cam.xCameraFogRange 500, 1000

# loading the font
let arial = "Arial".xLoadFont 12

# light source creating
let light1 = LIGHT_DIRECTIONAL.xCreateLight
light1.xRotateEntity 45, 0, 0

# creating the terrain
let terr = "media/textures/terrain.png".xLoadTerrain
terr.xScaleEntity 1, 200, 1
let grass = "media/textures/IceTerrain.jpg".xLoadTexture
terr.xEntityTexture grass, 0, 0
terr.xEntityFX 1

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
while 0 == 1.xKeyDown:

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
    
    # setting the camera above the terrain
    let
        x = cam.xEntityX
        y = cam.xEntityY
        z = cam.xEntityZ
        terra_y = 5 + terr.xTerrainY(x, y, z)
    cam.xPositionEntity x, terra_y, z
    
    # updating and rendering the world
    xUpdateWorld()
    xRenderWorld()
    
    # fps and triangle counter
    xText 10, 10, "FPS: " & $xGetFPS()
    xText 10, 30, "Polygons on terrain: " & $(terr.xTerrainSize * terr.xTerrainSize * 2)
    xText 10, 50, "Polygons rendered: " & $xTrisRendered()

    # drawing the scene
    xFlip()
