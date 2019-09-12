# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D legacy sample: 'Physics'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, random, lenientops
include "../../Headers/Xors3D.nim"
"../..".setCurrentDir

const impulse = 50
const wallSize = 4

xCreateLog()

# setup maximum supported AntiAlias Type
xGetMaxAntiAlias().xSetAntiAliasType

# set application window caption
"Physics sample".xAppTitle

# initialize graphics mode
xGraphics3D 800, 600, 32, 0, 0

# hide mouse pointer
xHidePointer()

# enable antialiasing
1.xAntiAlias

# create camera
let camera = xCreateCamera()

# position camera
#camera.xPositionEntity 0, 60, -200
camera.xPositionEntity 0, 20, -100

# create ground
let ground = xCreateCube()
camera.xPointEntity ground
ground.xScaleEntity 100, 1, 100
ground.xEntityAddBoxShape 0.0

# loading logo from file
let logoTexture = "media/textures/logo.jpg".xLoadTexture

# texture cube
ground.xEntityTexture logoTexture

# create wall
var wallBlocks: array[wallSize+1, array[wallSize+1, array[wallSize+1, Handle]]]
for x in 0..wallSize:
    for y in 0..wallSize:
        for z in 0..wallSize:
            if x == 0 and y == 0 and z == 0: wallBlocks[x][y][z] = xCreateCube()
            else: wallBlocks[x][y][z] = wallBlocks[0][0][0].xCopyEntity()
            wallBlocks[x][y][z].xPositionEntity (x - wallSize div 2) * 2.0, 2.0 + y * 2.0, (z - wallSize div 2) * 2.0
            wallBlocks[x][y][z].xEntityAddBoxShape 1.0
            wallBlocks[x][y][z].xEntityTexture logoTexture

# for mouse look
xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
let
    mousespeed          = 0.5
    camerasmoothness    = 4.5

# create light
let light = xCreateLight()
light.xRotateEntity 45, 0, 0

# function to reset cubes positions
proc resetWall() =
    for x in 0..wallSize:
        for y in 0..wallSize:
            for z in 0..wallSize:
                wallBlocks[x][y][z].xPositionEntity (x - wallSize div 2) * 2.0, 2.0 + y * 2.0, (z-wallSize div 2) * 2.0
                wallBlocks[x][y][z].xRotateEntity 0.0, 0.0, 0.0
                wallBlocks[x][y][z].xEntityReleaseForces

# Procedure to shoot sphere
proc shootSphere(camera: Handle) =
    let sphere = xCreateSphere()
    sphere.xPositionEntity camera.xEntityX(true), camera.xEntityY(true), camera.xEntityZ(true)
    sphere.xEntityColor 255, 0, 0
    sphere.xEntityAddSphereShape 1.0, 1.0
    xTFormNormal 0.0, 0.0, 1.0, camera, 0
    sphere.xEntityApplyCentralImpulse xTFormedX() * impulse, xTFormedY() * impulse, xTFormedZ() * impulse

# for camera mouse look
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
        
    # shoot sphere
    if 1.xMouseHit.bool: camera.shootSphere
    if 2.xMouseHit.bool: wallBlocks[wallSize.rand][wallSize.rand][wallSize.rand].xEntityApplyTorqueImpulse 0.0, 
        100.rand.float, 0.0
    
    # reset wall
    if KEY_SPACE.xKeyHit.bool: resetWall()
    
    # render scene
    xUpdateWorld()
    xRenderWorld()
    
    # FPS & rendered triangles counters
    xText 10, 10, "FPS: " & $xGetFPS()
    xText 10, 30, "TrisRendered: " & $xTrisRendered()
    xText 10, 50, "Left mouse button to shoot, right mouse button to add torque for random cube, space to reset wall"
    
    # switch back buffer
    xFlip()