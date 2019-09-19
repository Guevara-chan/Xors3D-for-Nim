# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D legacy sample: 'Parenting #1'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, lenientops
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

const USE_TEXTURED_POLY = true

type TDisk = object
    entity: Handle
    speed: float

var disks: seq[TDisk]

xGraphics3d 1024, 768, 32, 0, 1

let camera = xCreateCamera()
camera.xPositionEntity 0.0, 0.0, -16.0

var tex: Handle
if USE_TEXTURED_POLY:
    tex = "Media/Textures/magic_circle.png".xLoadTexture

proc createDisks(num = 8) =
    for i in 1..num:
        let
            ni = (num - i) * 0.5
            si = ni / num * 20
            ci = i * (if USE_TEXTURED_POLY: 0.35 else: 1)
        var disk: TDisk
        if i == 1:
            if USE_TEXTURED_POLY:
                disk.entity = 0.xCreatePoly
                disk.entity.xEntityTexture tex
                disk.entity.xEntityBlend BLEND_PUREADD
            else:
                disk.entity = 32.xCreateCylinder true
                disk.entity.xRotateMesh 90, 0, 0
                disk.entity.xScaleMesh 1.0, 1.0, 0.1
        else: disk.entity = disks[0].entity.xCopyEntity disks[0].entity
        disk.entity.xEntityFX FX_FULLBRIGHT
        disk.entity.xEntityOrder ni.int + 1
        disk.entity.xScaleEntity si, si, si, true
        disk.entity.xPositionEntity ci, 0.0, 0.0, true
        disk.entity.xEntityColor 0, 255 * i div num, (255 * (1.0 - i / num)).int
        if USE_TEXTURED_POLY: disk.entity.xEntityAlpha i * 0.5 / num + 0.5
        disk.speed = i / num
        disks &= disk

proc updateDisks() =
    for disk in disks: disk.entity.xTurnEntity 0.0, 0.0, disk.speed, true

createDisks()

while KEY_ESCAPE.xKeyHit == 0:
    updateDisks()
    xRenderWorld()
    xFlip()