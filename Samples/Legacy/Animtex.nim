# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D legacy sample: 'Animetex'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, times, math
include "../../Headers/Xors3D.nim"
"../..".setCurrentDir

# initialization
"Animation texture".xAppTitle
xGraphics3D 800, 600, 32, 0, 1

# enabling antialiasing
1.xAntiAlias

# setting texture filtering mode
TF_ANISOTROPIC.xSetTextureFiltering

# camera creating
let camera = xCreateCamera()
camera.xPositionEntity 0, 10, -170

# light source creating
let light = xCreateLight()
light.xRotateEntity -45, 0, 0

# creating of the cube
let cube = xCreateCube()
cube.xScaleEntity 20, 20, 20

# animated texture loading
let anim_tex = "media/textures/boomstrip.bmp".xLoadAnimTexture(1, 64, 64, 0, 39)

# setting the colour of camera clearing
camera.xCameraClsColor 192, 192, 192

# font loading
let arial = "Arial".xLoadFont 12

# main loop
while 1.xKeyDown == 0 and "WM_CLOSE".xWinMessage == 0:

    # counting for changing texture frame
    let frame = (cpuTime() * 1000 / 50).int mod 39
    
    # putting texture on the cube
    cube.xEntityTexture anim_tex, frame
    
    # cube rotation
    var
        pitch = 0.0
        yaw   = 0.0
        roll  = 0.0
    if 208.xKeyDown.bool:   pitch = -1
    if 200.xKeyDown.bool:   pitch =  1
    if 203.xKeyDown.bool:   yaw   = -1
    if 205.xKeyDown.bool:   yaw   =  1
    if 45.xKeyDown.bool:    roll  = -1 
    if 44.xKeyDown.bool:    roll  =  1 
    cube.xTurnEntity pitch, yaw, roll
    
    # rendering of the world
    xRenderWorld()
    
    # fps counter and debug info
    xColor 0, 0, 0
    xText 10, 10, "FPS: " & $xGetFPS()
    xText 10, 30, r"Up\Down\Left\Right\Z\X - rotate cube"
    
    # drawing the scene
    xFlip()