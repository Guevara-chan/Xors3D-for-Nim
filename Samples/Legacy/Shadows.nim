# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D basic sample: 'Shadows'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, random, times, sequtils
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

# for particles
type TParticle = ref object
    entity: Handle
    speed: float
    alpha: float

var particles: seq[TParticle]

# disable AntiAlias
0.xSetAntiAliasType

# set application window caption
"Shadows sample".xAppTitle

# initialize graphics mode
xGraphics3D 800, 600, 32, 0, 1
xCreateDSS 1024, 1024

# set texture filtring
TF_ANISOTROPICX16.xSetTextureFiltering

# hide mouse pointer
xHidePointer()

# create camera
let camera = xCreateCamera()
camera.xCameraRange 0.1, 1000
camera.xPositionEntity -50, 10, -50
camera.xCameraEnableShadows
var
    camxa = -45.0
    camya = 5.0

# create a terrain
let terrain = xCreateCube()
terrain.xScaleEntity 200, 0.1, 200
# load grass texture
let grass = "media/textures/gras_diffuse_1a.jpg".xLoadTexture
grass.xScaleTexture 0.1, 0.1
terrain.xEntityTexture grass, 0, 0

# create forest
let bereza = "media/meshes/bereza.b3d".xLoadMesh
bereza.xScaleEntity 7, 7, 7

# for mouse look
xMoveMouse xGraphicsWidth() div 2, xGraphicsHeight() div 2
let
    mousespeed       = 0.5 
    camerasmoothness = 4.5

# create light
let light = xCreateLight()
light.xRotateEntity 45, 0, 0
light.xLightColor   25, 25, 25

# create skybox
let skybox = "media/meshes/skydome.b3d".xLoadMesh
skybox.xEntityFX    1
skybox.xScaleEntity 0.5, 0.5, 0.5
skybox.xEntityColor 15, 15, 15
skybox.xEntityOrder 1

# warrior
let warrior = "media/meshes/kuznec.b3d".xLoadAnimMesh
warrior.xEntityColor    255, 255, 255
warrior.xPositionEntity 10, 0, -5
warrior.xScaleEntity    5, 5, 5
warrior.xExtractAnimSeq 20, 59
warrior.xAnimate        1, 1.2, 1

# assing point light to fire
let light2 = 2.xCreateLight
light2.xLightRange 30
light2.xLightColor 255, 0, 0
let fire = "media/meshes/koster.b3d".xLoadMesh
fire.xPositionEntity    -10, 0, -10
light2.xPositionEntity  -10, 10, -10
fire.xScaleEntity       0.07, 0.07, 0.07
let flame = "media/Textures/fire.jpg".xLoadTexture 1 + 2
flame.xTextureBlend 5

# shadows
xInitShadows 1024, 0, 512

# set shadows params
light.xLightEnableShadows 1
xSetShadowParams 4, 0.85, true, 300
light.xLightShadowEpsilons  0.0001, 0.16
light2.xLightEnableShadows  1
light2.xLightShadowEpsilons 0.01, 0.0

# for camera mouse look
proc CurveValue(newvalue: float, oldvalue: float, increments: int): float =
    if increments >  1:     oldvalue - (oldvalue - newvalue) / increments.float
    elif increments <= 1:   newvalue
    else: oldvalue

# for particles
proc UpdateParticles() =
    for particle in particles:
        if particle.entity != 0:
            particle.entity.xTranslateEntity 0.0, particle.speed, 0.0
            particle.alpha = particle.alpha - 0.05
            particle.entity.xEntityAlpha particle.alpha
            if particle.alpha < 0.001:
                particle.entity.xFreeEntity
                particle.entity = -1
    particles = particles.filterIt(it.entity != -1)

proc CreateParticle(x, y, z: float, texture: Handle) =
    var newParticle = new(TParticle)
    newParticle.entity = xCreateSprite()
    newParticle.entity.xEntityTexture   texture
    newParticle.entity.xEntityFX        1
    newParticle.entity.xEntityBlend     3
    newParticle.entity.xPositionEntity  x, y, z
    newParticle.entity.xScaleSprite     5.rand.float32 + 2.0, 5.rand.float32 + 2.0
    newParticle.speed = (3.rand + 2).float / 10.0
    newParticle.alpha = 1.0
    particles &= newParticle

# main program loop
var mxs, mys: float
while 0 == KEY_ESCAPE.xKeyDown:

    # camera control
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
    
    # update flame
    var lastCreated = 0
    if cpuTime().int > lastCreated:
        let
            px = fire.xEntityX(true) + (2.rand - 1).float / 10
            py = fire.xEntityY true
            pz = fire.xEntityZ(true) + (2.rand - 1).float / 10
        CreateParticle px, py, pz, flame
        lastCreated = cpuTime().int + 25
    UpdateParticles()
    
    # move warrior
    warrior.xMoveEntity 0, 0, 0.3
    warrior.xTurnEntity 0, 1, 0
    
    # position skybox
    skybox.xPositionEntity camera.xEntityX, camera.xEntityY - 1, camera.xEntityZ
    
    # update animations
    xUpdateWorld()
        
    # render scene
    xRenderWorld 1.0, true
    
    # draw text
    xText 10, 10, "TrisRendered: " & $xTrisRendered()
    xText 10, 30, "FPS: " & $xGetFPS()
    xText 10, 50, "DIP calls: " & $xDIPCounter()
    
    # switch back buffer
    xFlip()