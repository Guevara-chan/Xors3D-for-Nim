# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D shading sample: 'Phong'
# Original source from MoKa (Maxim Miheyev)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, math, times
include "../../Headers/Xors3D.nim"
"../..".setCurrentDir
#====================================


#====================================
# Window
xGraphics3D 800, 600, 32, 0, 1
TF_ANISOTROPIC.xSetTextureFiltering
#====================================


#====================================
# Font
let font = "Tahoma".xLoadFont 10
font.xSetFont
#====================================


#====================================
# Varriables
var 
    mXSp, mYSp: int
    IKdQ, IKdW, IKdE, IKdA, IKdS, IKdD: int
#====================================


#====================================
# Camera
let gCamera = xCreateCamera()
gCamera.xCameraZoom 0.8
gCamera.xCameraClsColor 50, 50, 50
gCamera.xRotateEntity 20, 45, 0
gCamera.xMoveEntity 0, 10, -100
#====================================


#====================================
# LightSphere
let tLightSpr = 8.xCreateSphere
tLightSpr.xEntityFX 1
tLightSpr.xPositionEntity 30, 30, 30
#====================================


#====================================
# Shader
let tShader = "Media/Materials/Phong.fx".xLoadFXFile
#====================================


#====================================
# Model
let tModel = "Media/Extra media/Teapot.b3d".xLoadMesh

let tTextureDiffuse = "Media/Extra media/rRockwall_Diffuse.jpg".xLoadTexture

tModel.xSetEntityEffect tShader
tModel.xSetEffectTechnique "Directional"
tModel.xSetEffectMatrixSemantic "MatWorldViewProj", WORLDVIEWPROJ
tModel.xSetEffectMatrixSemantic "MatWorld", WORLD
#   Shader Varriables
tModel.xSetEffectVector "AmbientClr", 0.25, 0.3, 0.35
tModel.xSetEffectVector "SpecClr", 1, 0.8, 0.6
tModel.xSetEffectFloat "SpecInt", 1
tModel.xSetEffectFloat "SpecDot", 2
tModel.xSetEffectFloat "SpecRng", 16
tModel.xSetEffectFloat "RngLight", 80
tModel.xSetEffectTexture "tDiffuse", tTextureDiffuse
#====================================
# Functions
proc updateInput() =
    xMoveMouse 400, 300
    mXSp = xMouseXSpeed(); mYSp = xMouseYSpeed()
    IKdQ = KEY_Q.xKeyDown; IKdW = KEY_W.xKeyDown
    IKdE = KEY_E.xKeyDown; IKdA = KEY_A.xKeyDown
    IKdS = KEY_S.xKeyDown; IKdD = KEY_D.xKeyDown

proc updateCamera(camera: Handle, viewSensivity: float, moveSensivity: float) =
    var camP = gCamera.xEntityPitch + mYSp.float * viewSensivity
    if camP.abs > 80: camP = (80 * camP.sgn).float
    camera.xTurnEntity 0, -mXSp.float * viewSensivity, 0
    camera.xRotateEntity camP, gCamera.xEntityYaw, 0
  
    camera.xMoveEntity (IKdD-IKdA).float*moveSensivity, (IKdE-IKdQ).float*moveSensivity, (IKdW-IKdS).float*moveSensivity

#====================================
# Main Cycle
xMoveMouse 400,300

while true:
    
    updateInput()
    gCamera.updateCamera 0.1, 1
    
    #====================================
    tModel.xTurnEntity 0.0, 0.1, 0.0
    
    if KEY_1.xKeyHit.bool: tModel.xSetEffectTechnique "Directional"
    if KEY_2.xKeyHit.bool: tModel.xSetEffectTechnique "Point"
    if KEY_3.xKeyHit.bool: tModel.xSetEffectTechnique "PointDistance"
    
    tLightSpr.xPositionEntity (cpuTime() * 0.05).sin * 30, ((cpuTime() * 0.06).sin * 25).abs + 5, 
        (cpuTime() * 0.04).sin * 30
    #====================================
    
    if KEY_ESCAPE.xKeyHit.bool: quit()
  
    xSetEffectVector tModel,  "PosLight", tLightSpr.xEntityX, tLightSpr.xEntityY, tLightSpr.xEntityZ
    xSetEffectVector tModel,  "PosCam", gCamera.xEntityX, gCamera.xEntityY, gCamera.xEntityZ
  
    xRenderWorld()
  
    xText 10, 10, "TrisRendered: " & $xTrisRendered()
    xText 10, 25, "FPS: " & $xGetFPS()
    xText 10, 580, "Press 1,2,3 to Change Light Type (Directional, Point, Point+Distance)"
  
    xFlip()
#====================================