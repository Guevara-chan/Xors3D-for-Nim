# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D basic sample: 'Screenshot'
# Original source from Xors3D Team (C)
# Converted in 2019 by Guevara-chan.
# *-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
import os, random, lenientops
include "../../Headers/Xors3D.nim"
"../../".setCurrentDir

const
    fade_time = 1500*2
    ext_png = "png"
    ext_jpg = "jpg"
    ext_bmp = "bmp"
    ext_tga = "tga"
    ext_dds = "dds"

let file_ext = ext_png
let file_name = "screenshot." & file_ext

var screen_time = 0

type TCube = object
    entity: Handle

var cubes: seq[TCube]

xGetMaxAntiAlias().xSetAntiAliasType
xGraphics3d 1280, 720, 32, 0, 1
1.xAntiAlias

let camera = xCreateCamera()
camera.xCameraClsColor 128, 196, 32

### Procedures.
proc generateCubes(num = 100) =
    var
        r, g, b: int
        lmx, lmy, lmz: float
    let
        gx = xGraphicsWidth() * 0.05
        gy = xGraphicsHeight() * 0.05
    for i in 0..num-1:
        var cube: TCube
        cube.entity = xCreateCube()
        cube.entity.xScaleEntity rand 3.0..5.0, rand 3.0..5.0, rand 3.0..5.0
        lmx = rand -gx..gx
        lmy = rand -gy..gy
        lmz = rand 100.0..150.0
        cube.entity.xPositionEntity lmx, lmy, lmz
        r = ((lmx + 40) / 80 * 255).int
        g = ((lmy + 40) / 80 * 255).int
        b = ((lmz + 40) / 80 * 255).int
        cube.entity.xEntityColor r, g, b
        cubes &= cube

proc updateCubes() =
    var cnt = 0
    for cube in cubes:
        let
            p = (cnt mod 2) * 2 - 1
            y = (cnt mod 3) * 2 - 1
            r = (cnt mod 4) * 2 - 1
        cube.entity.xTurnEntity 0.1 * p, 0.1 * y, 0.1 * r
        cnt += 1

proc printTime() =
    let dT = xMillisecs() - screen_time
    if dT < fade_time:
        xColor 0, 0, 0, (255 * (1.0 - dT / fade_time)).int
        xText 10, 10, "Screenshot saved to: '" & file_name & "'"
### End Procedures.

generateCubes()

while 0 == KEY_ESCAPE.xKeyHit:
    updateCubes()
    if KEY_SPACE.xKeyHit.bool:
        screen_time = xMillisecs()
        xBackBuffer().xSaveBuffer file_name
    xRenderWorld()
    printTime()
    xFlip()