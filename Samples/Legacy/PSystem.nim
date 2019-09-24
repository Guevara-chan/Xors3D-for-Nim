# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D legacy sample: 'Particle System'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

# initialization
"Particle System".xAppTitle
xGraphics3D 800, 600, 32, 0, 1

# texture loading
let texture = "media/textures/particle.bmp".xLoadTexture 1 + 2 + 8

# creating the pasrticle system
let psystem = xCreatePSystem true
psystem.xPSystemSetTexture          texture, 1, 0
psystem.xPSystemSetParticleLifetime 10000
psystem.xPSystemSetMaxParticles     3000
psystem.xPSystemSetCreationInterval 30
psystem.xPSystemSetCreationFrequency 5
psystem.xPSystemSetVelocity         -3, -3, -3, 3, 3, 3
psystem.xPSystemSetParticleSize     1, 1, 5, 5
psystem.xPSystemSetScaleSpeed       -0.1, -0.1, 1, 1
psystem.xPSystemSetColors           0, 255, 0, 255, 0, 0
psystem.xPSystemSetColorMode        1

# create emitter
let emitter = psystem.xCreateEmitter

# creating the camera
let camera = xCreateCamera()
camera.xMoveEntity 0, 0, -50

# main loop
while 0 == 1.xKeyDown and 0 == "WM_CLOSE".xWinMessage:

    # turn emitter
    emitter.xTurnEntity 1, 1, 1

    # updating and rendering the scene
    xUpdateWorld()
    xRenderWorld()
    
    # fps and particles counter
    xText 10, 10, "FPS: " & $xGetFPS()
    xText 10, 30, "Particles: " & $xEmitterCountParticles emitter
    
    # drawing the scene
    xFlip()