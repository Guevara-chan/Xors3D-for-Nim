# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D basic sample: 'Camera Viewport'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, random, lenientops
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

xCreateLog()
xGraphics3D 1024,768, 32, 0, 1
xBackBuffer().xSetBuffer

# Create first camera
let cam1 = xCreateCamera()

# Set the first camera's viewport so that it fills the top half of the  camera
let
    w = xGraphicsWidth()
    h = xGraphicsHeight() / 1.777
cam1.xCameraViewport 0, (xGraphicsHeight() - h).int div 2, w.int, h.int
cam1.xCameraViewport 1025, 769, 1024, 768

let light = xCreateLight()
light.xRotateEntity 90,0,0

proc Garbage(n = 100) =
    for i in 1..n:
        let cube = xCreateCube()
        cube.xPositionEntity rand(-20.0..20.0), rand(-20.0..20.0), rand(-20.0..20.0)
        cube.xTurnEntity 360.0.rand, 360.0.rand, 360.0.rand
        cube.xEntityColor rand(127..255), rand(127..255), rand(127..255)
Garbage()

let back = xCreateCube()
back.xEntityColor 255, 0, 0
back.xFlipMesh
back.xScaleEntity 500, 500, 500

while 0 == 1.xKeyDown:
    xCls()
    if 205.xKeyDown.bool: cam1.xTurnEntity 0, -1, 0
    if 203.xKeyDown.bool: cam1.xTurnEntity 0, 1, 0
    if 208.xKeyDown.bool: cam1.xMoveEntity 0, 0, -0.05
    if 200.xKeyDown.bool: cam1.xMoveEntity 0, 0, 0.05
    
    xRenderWorld()
    
    xText 10, 10, "Use cursor keys to move first camera"

    xFlip()