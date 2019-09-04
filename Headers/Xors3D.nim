# *=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D's main engine declarations.
# Converted in 2019 by Guevara-chan.
# *=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

 
 
# standard headers
 
# Delaration & call macros
 
# Object handle typedef
type Handle* = int
const NULL = 0
 
# Log levels
const LOG_NO* = 5
const LOG_FATAL* = 4
const LOG_ERROR* = 3
const LOG_WARNING* = 2
const LOG_MESSAGE* = 1
const LOG_INFO* = 0
 
# Log targets
const LOG_HTML* = 1
const LOG_COUT* = 2
const LOG_STRING* = 4
 
# Skinning types
const SKIN_SOFTWARE* = 2
const SKIN_HARDWARE* = 1
 
# Light sources types
const LIGHT_DIRECTIONAL* = 1
const LIGHT_POINT* = 2
const LIGHT_SPOT* = 3
 
# Texture filtering
const TF_NONE* = 0
const TF_POINT* = 1
const TF_LINEAR* = 2
const TF_ANISOTROPIC* = 3
const TF_ANISOTROPICX4* = 4
const TF_ANISOTROPICX8* = 5
const TF_ANISOTROPICX16* = 6
 
# PixelShader versions
const PS_1_1* = 0
const PS_1_2* = 1
const PS_1_3* = 2
const PS_1_4* = 3
const PS_2_0* = 4
const PS_3_0* = 5
 
# VertexShader versions
const VS_1_1* = 0
const VS_2_0* = 1
const VS_3_0* = 2
 
# Matrix semantics
const WORLD* = 0
const WORLDVIEWPROJ* = 1
const VIEWPROJ* = 2
const VIEW* = 3
const PROJ* = 4
const WORLDVIEW* = 5
const VIEWINVERSE* = 6
const WORLDINVERSETRANSPOSE* = 15
const WORLDINVERSE* = 16
const WORLDTRANSPOSE* = 17
const VIEWPROJINVERSE* = 18
const VIEWPROJINVERSETRANSPOSE* = 19
const VIEWTRANSPOSE* = 20
const VIEWINVRSETRANSPOSE* = 21
const PROJINVERSE* = 22
const PROJTRANSPOSE* = 23
const PROJINVRSETRANSPOSE* = 24
const WORLDVIEWPROJTRANSPOSE* = 25
const WORLDVIEWPROJINVERSE* = 26
const WORLDVIEWPROJINVERSETRANSPOSE* = 27
const WORLDVIEWTRANSPOSE* = 28
const WORLDVIEWINVERSE* = 29
const WORLDVIEWINVERSETRANSPOSE* = 30
 
# Antialiasing types
const AANONE* = 0
const AA2SAMPLES* = 1
const AA3SAMPLES* = 2
const AA4SAMPLES* = 3
const AA5SAMPLES* = 4
const AA6SAMPLES* = 5
const AA7SAMPLES* = 6
const AA8SAMPLES* = 7
const AA9SAMPLES* = 8
const AA10SAMPLES* = 9
const AA11SAMPLES* = 10
const AA12SAMPLES* = 11
const AA13SAMPLES* = 12
const AA14SAMPLES* = 13
const AA15SAMPLES* = 14
const AA16SAMPLES* = 15
 
# Camera fog mode
const FOG_NONE* = 0
const FOG_LINEAR* = 1
 
# Camera projection mode
const PROJ_DISABLE* = 0
const PROJ_PERSPECTIVE* = 1
const PROJ_ORTHOGRAPHIC* = 2
 
# Entity FX flags
const FX_NOTHING* = 0
const FX_FULLBRIGHT* = 1
const FX_VERTEXCOLOR* = 2
const FX_FLATSHADED* = 4
const FX_DISABLEFOG* = 8
const FX_DISABLECULLING* = 16
const FX_NOALPHABLEND* = 32
 
# Entity blending modes
const BLEND_ALPHA* = 1
const BLEND_MULTIPLY* = 2
const BLEND_ADD* = 3
const BLEND_PUREADD* = 4
 
# Compare functions
const CMP_NEVER* = 1
const CMP_LESS* = 2
const CMP_EQUAL* = 3
const CMP_LESSEQUAL* = 4
const CMP_GREATER* = 5
const CMP_NOTEQUAL* = 6
const CMP_GREATEREQUAL* = 7
const CMP_ALWAYS* = 8
 
# Axis
const AXIS_X* = 1
const AXIS_Y* = 2
const AXIS_Z* = 3
 
# Texture loading flags
const FLAGS_COLOR* = 1
const FLAGS_ALPHA* = 2
const FLAGS_MASKED* = 4
const FLAGS_MIPMAPPED* = 8
const FLAGS_CLAMPU* = 16
const FLAGS_CLAMPV* = 32
const FLAGS_SPHERICALENVMAP* = 64
const FLAGS_CUBICENVMAP* = 128
const FLAGS_R32F* = 256
const FLAGS_SKIPCACHE* = 512
const FLAGS_VOLUMETEXTURE* = 1024
const FLAGS_ARBG16F* = 2048
const FLAGS_ARBG32F* = 4096
 
# Texture blending modes
const TEXBLEND_NONE* = 0
const TEXBLEND_ALPHA* = 1
const TEXBLEND_MULTIPLY* = 2
const TEXBLEND_ADD* = 3
const TEXBLEND_DOT3* = 4
const TEXBLEND_LIGHTMAP* = 5
const TEXBLEND_SEPARATEALPHA* = 6
 
# Cube map faces
const FACE_LEFT* = 0
const FACE_FORWARD* = 1
const FACE_RIGHT* = 2
const FACE_BACKWARD* = 3
const FACE_UP* = 4
const FACE_DOWN* = 5
 
# Entity animation types
const ANIMATION_STOP* = 0
const ANIMATION_LOOP* = 1
const ANIMATION_PINGPONG* = 2
const ANIMATION_ONE* = 3
 
# Collision types
const SPHERETOSPHERE* = 1
const SPHERETOBOX* = 3
const SPHERETOTRIMESH* = 2
 
# Collision respones types
const RESPONSE_STOP* = 1
const RESPONSE_SLIDING* = 2
const RESPONSE_SLIDING_DOWNLOCK* = 3
 
# Entity picking modes
const PICK_NONE* = 0
const PICK_SPHERE* = 1
const PICK_TRIMESH* = 2
const PICK_BOX* = 3
 
# Sprite view modes
const SPRITE_FIXED* = 1
const SPRITE_FREE* = 2
const SPRITE_FREEROLL* = 3
const SPRITE_FIXEDYAW* = 4
 
# Joystick types
const JOY_NONE* = 0
const JOY_DIGITAL* = 1
const JOY_ANALOG* = 2
 
# Cubemap rendering modes
const CUBEMAP_SPECULAR* = 1
const CUBEMAP_DIFFUSE* = 2
const CUBEMAP_REFRACTION* = 3
 
# Shadow's blur levels
const SHADOWS_BLUR_NONE* = 0
const SHADOWS_BLUR_3* = 1
const SHADOWS_BLUR_5* = 2
const SHADOWS_BLUR_7* = 3
const SHADOWS_BLUR_11* = 4
const SHADOWS_BLUR_13* = 5
 
 
# primitives types
const PRIMITIVE_POINTLIST* = 1
const PRIMITIVE_LINELIST* = 2
const PRIMITIVE_LINESTRIP* = 3
const PRIMITIVE_TRIANGLELIST* = 4
const PRIMITIVE_TRIANGLESTRIP* = 5
const PRIMITIVE_TRIANGLEFAN* = 6
 
# line separator types
const LS_NUL* = 0
const LS_CR* = 1
const LS_LF* = 2
const LS_CRLF* = 3
 
# physics: joint types
const JOINT_POINT2POINT* = 0
const JOINT_6DOF* = 1
const JOINT_6DOFSPRING* = 2
const JOINT_HINGE* = 3
 
# physics: debug drawer modes
const PXDD_NO* = 0
const PXDD_WIREFRAME* = 1
const PXDD_AABB* = 2
const PXDD_CONTACTS* = 4
const PXDD_JOINTS* = 8
const PXDD_JOINT_LIMITS* = 16
const PXDD_NO_AXIS* = 32
 
# physics: ray casting modes
const PXRC_SINGLE* = 0
const PXRC_MULTIPLE* = 1
 
# 3dlines commands
proc xCreateLine3D*(fromX: float32, fromY: float32, fromZ: float32, toX: float32, toY: float32, toZ: float32, red: int = 255, green: int = 255, blue: int = 255, alpha: int = 255, useZBuffer: bool = true): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateLine3D".}
proc xLine3DOrigin*(line3d: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DOrigin".}
proc xLine3DAddNode*(line3d: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DAddNode".}
proc xLine3DColor*(line3d: Handle, red: int, green: int, blue: int, alpha: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DColor".}
proc xLine3DUseZBuffer*(line3d: Handle, state: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DUseZBuffer".}
proc xLine3DOriginX*(line3d: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DOriginX".}
proc xLine3DOriginY*(line3d: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DOriginY".}
proc xLine3DOriginZ*(line3d: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DOriginZ".}
proc xLine3DNodesCount*(line3d: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DNodesCount".}
proc xLine3DNodePosition*(line3d: Handle, index: int, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DNodePosition".}
proc xLine3DNodeX*(line3d: Handle, index: int, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DNodeX".}
proc xLine3DNodeY*(line3d: Handle, index: int, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DNodeY".}
proc xLine3DNodeZ*(line3d: Handle, index: int, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DNodeZ".}
proc xLine3DRed*(line3d: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DRed".}
proc xLine3DGreen*(line3d: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DGreen".}
proc xLine3DBlue*(line3d: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DBlue".}
proc xLine3DAlpha*(line3d: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine3DAlpha".}
proc xGetLine3DUseZBuffer*(line3d: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetLine3DUseZBuffer".}
proc xDeleteLine3DNode*(line3d: Handle, index: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteLine3DNode".}
proc xClearLine3D*(line3d: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearLine3D".}
 
# brushes commands
proc xLoadBrush*(path: cstring, flags: int = 9, xScale: float32 = 1.0f, yScale: float32 = 1.0f): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadBrush".}
proc xCreateBrush*(red: float32 = 255.0f, green: float32 = 255.0f, blue: float32 = 255.0f): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateBrush".}
proc xFreeBrush*(brush: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeBrush".}
proc xGetBrushTexture*(brush: Handle, index: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushTexture".}
proc xBrushColor*(brush: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBrushColor".}
proc xBrushAlpha*(brush: Handle, alpha: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBrushAlpha".}
proc xBrushShininess*(brush: Handle, shininess: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBrushShininess".}
proc xBrushBlend*(brush: Handle, blend: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBrushBlend".}
proc xBrushFX*(brush: Handle, FX: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBrushFX".}
proc xBrushTexture*(brush: Handle, texture: Handle, frame: int = 0, index: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBrushTexture".}
proc xGetBrushName*(brush: Handle): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushName".}
proc xBrushName*(brush: Handle, name: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBrushName".}
proc xGetBrushAlpha*(brush: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushAlpha".}
proc xGetBrushBlend*(brush: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushBlend".}
proc xGetBrushRed*(brush: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushRed".}
proc xGetBrushGreen*(brush: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushGreen".}
proc xGetBrushBlue*(brush: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushBlue".}
proc xGetBrushFX*(brush: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushFX".}
proc xGetBrushShininess*(brush: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetBrushShininess".}
 
# cameras commands
proc xCameraFogMode*(camera: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraFogMode".}
proc xCameraFogColor*(camera: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraFogColor".}
proc xCameraFogRange*(camera: Handle, nearRange: float32, farRange: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraFogRange".}
proc xCameraClsColor*(camera: Handle, red: int, green: int, blue: int, alpha: int = 255) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraClsColor".}
proc xCameraProjMode*(camera: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraProjMode".}
proc xCameraClsMode*(camera: Handle, clearColor: int, clearZBuffer: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraClsMode".}
proc xSphereInFrustum*(camera: Handle, x: float32, y: float32, z: float32, radii: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSphereInFrustum".}
proc xCameraClipPlane*(camera: Handle, index: int, enabled: bool, a: float32, b: float32, c: float32, d: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraClipPlane".}
proc xCameraRange*(camera: Handle, nearRange: float32, farRange: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraRange".}
proc xCameraViewport*(camera: Handle, x: int, y: int, width: int, height: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraViewport".}
proc xCameraCropViewport*(camera: Handle, x: int, y: int, width: int, height: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraCropViewport".}
proc xCreateCamera*(parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateCamera".}
proc xCameraProject*(camera: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraProject".}
proc xCameraProject2D*(camera: Handle, x: int, y: int, zDistance: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraProject2D".}
proc xProjectedX*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xProjectedX".}
proc xProjectedY*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xProjectedY".}
proc xProjectedZ*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xProjectedZ".}
proc xGetViewMatrix*(camera: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetViewMatrix".}
proc xGetProjectionMatrix*(camera: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetProjectionMatrix".}
proc xCameraZoom*(camera: Handle, zoom: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraZoom".}
proc xGetViewProjMatrix*(camera: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetViewProjMatrix".}
 
# collisions commands
proc xCollisions*(srcType: int, destType: int, collideMethod: int, response: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisions".}
proc xClearCollisions*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearCollisions".}
proc xResetEntity*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xResetEntity".}
proc xEntityRadius*(entity: Handle, xRadius: float32, yRadius: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityRadius".}
proc xEntityBox*(entity: Handle, x: float32, y: float32, z: float32, width: float32, height: float32, depth: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityBox".}
proc xEntityType*(entity: Handle, typeID: int, recurse: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityType".}
proc xEntityCollided*(entity: Handle, typeID: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCollided".}
proc xCountCollisions*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCountCollisions".}
proc xCollisionX*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionX".}
proc xCollisionY*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionY".}
proc xCollisionZ*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionZ".}
proc xCollisionNX*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionNX".}
proc xCollisionNY*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionNY".}
proc xCollisionNZ*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionNZ".}
proc xCollisionTime*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionTime".}
proc xCollisionEntity*(entity: Handle, index: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionEntity".}
proc xCollisionSurface*(entity: Handle, index: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionSurface".}
proc xCollisionTriangle*(entity: Handle, index: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCollisionTriangle".}
proc xGetEntityType*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityType".}
 
# constants commands
proc xRenderPostEffect*(poly: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRenderPostEffect".}
proc xCreatePostEffectPoly*(camera: Handle, mode: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreatePostEffectPoly".}
proc xGetFunctionAddress*(name: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetFunctionAddress".}
 
# effects commands
proc xLoadFXFile*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadFXFile".}
proc xFreeEffect*(effect: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeEffect".}
proc xSetEntityEffect*(entity: Handle, effect: Handle, index: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEntityEffect".}
proc xSetSurfaceEffect*(surface: Handle, effect: Handle, index: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetSurfaceEffect".}
proc xSetBonesArrayName*(entity: Handle, arrayName: cstring, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetBonesArrayName".}
proc xSurfaceBonesArrayName*(surface: Handle, arrayName: cstring, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceBonesArrayName".}
proc xSetEffectInt*(entity: Handle, name: cstring, value: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectInt".}
proc xSurfaceEffectInt*(surface: Handle, name: cstring, value: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectInt".}
proc xSetEffectFloat*(entity: Handle, name: cstring, value: float32, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectFloat".}
proc xSurfaceEffectFloat*(surface: Handle, name: cstring, value: float32, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectFloat".}
proc xSetEffectBool*(entity: Handle, name: cstring, value: bool, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectBool".}
proc xSurfaceEffectBool*(surface: Handle, name: cstring, value: bool, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectBool".}
proc xSetEffectVector*(entity: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 0.0f, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectVector".}
proc xSurfaceEffectVector*(surface: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 0.0f, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectVector".}
proc xSetEffectVectorArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectVectorArray".}
proc xSurfaceEffectVectorArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectVectorArray".}
proc xSurfaceEffectMatrixArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectMatrixArray".}
proc xSurfaceEffectFloatArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectFloatArray".}
proc xSurfaceEffectIntArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectIntArray".}
proc xSetEffectMatrixArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectMatrixArray".}
proc xSetEffectFloatArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectFloatArray".}
proc xSetEffectIntArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectIntArray".}
proc xCreateBufferVectors*(count: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateBufferVectors".}
proc xBufferVectorsSetElement*(buffer: Handle, number: int, x: float32, y: float32, z: float32, w: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferVectorsSetElement".}
proc xCreateBufferMatrix*(count: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateBufferMatrix".}
proc xBufferMatrixSetElement*(buffer: Handle, number: int, matrix: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferMatrixSetElement".}
proc xBufferMatrixGetElement*(buffer: Handle, number: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferMatrixGetElement".}
proc xCreateBufferFloats*(count: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateBufferFloats".}
proc xBufferFloatsSetElement*(buffer: Handle, number: int, value: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferFloatsSetElement".}
proc xBufferFloatsGetElement*(buffer: Handle, number: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferFloatsGetElement".}
proc xBufferDelete*(buffer: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferDelete".}
proc xSetEffectMatrixWithElements*(entity: Handle, name: cstring, m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectMatrixWithElements".}
proc xSetEffectMatrix*(entity: Handle, name: cstring, matrix: Handle, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectMatrix".}
proc xSurfaceEffectMatrix*(surface: Handle, name: cstring, matrix: Handle, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectMatrix".}
proc xSurfaceEffectMatrixWithElements*(surface: Handle, name: cstring, m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectMatrixWithElements".}
proc xSetEffectEntityTexture*(entity: Handle, name: cstring, index: int = 0, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectEntityTexture".}
proc xSetEffectTexture*(entity: Handle, name: cstring, texture: Handle, frame: int = 0, layer: int = -1, isRecursive: int = 1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectTexture".}
proc xSurfaceEffectTexture*(surface: Handle, name: cstring, texture: Handle, frame: int = 0, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectTexture".}
proc xSurfaceEffectMatrixSemantic*(surface: Handle, name: cstring, value: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceEffectMatrixSemantic".}
proc xSetEffectMatrixSemantic*(entity: Handle, name: cstring, value: int, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectMatrixSemantic".}
proc xDeleteSurfaceConstant*(surface: Handle, name: cstring, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteSurfaceConstant".}
proc xDeleteEffectConstant*(entity: Handle, name: cstring, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteEffectConstant".}
proc xClearSurfaceConstants*(surface: Handle, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearSurfaceConstants".}
proc xClearEffectConstants*(entity: Handle, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearEffectConstants".}
proc xSetEffectTechnique*(entity: Handle, name: cstring, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEffectTechnique".}
proc xSurfaceTechnique*(surface: Handle, name: cstring, layer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceTechnique".}
proc xValidateEffectTechnique*(effect: Handle, name: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xValidateEffectTechnique".}
proc xSetEntityShaderLayer*(entity: Handle, layer: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEntityShaderLayer".}
proc xGetEntityShaderLayer*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityShaderLayer".}
proc xSetSurfaceShaderLayer*(surface: Handle, layer: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetSurfaceShaderLayer".}
proc xGetSurfaceShaderLayer*(surface: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetSurfaceShaderLayer".}
proc xSetFXInt*(effect: Handle, name: cstring, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXInt".}
proc xSetFXFloat*(effect: Handle, name: cstring, value: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXFloat".}
proc xSetFXBool*(effect: Handle, name: cstring, value: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXBool".}
proc xSetFXVector*(effect: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXVector".}
proc xSetFXVectorArray*(effect: Handle, name: cstring, value: Handle, count: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXVectorArray".}
proc xSetFXMatrixArray*(effect: Handle, name: cstring, value: Handle, count: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXMatrixArray".}
proc xSetFXFloatArray*(effect: Handle, name: cstring, value: Handle, count: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXFloatArray".}
proc xSetFXIntArray*(effect: Handle, name: cstring, value: Handle, count: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXIntArray".}
proc xSetFXEntityMatrix*(effect: Handle, name: cstring, matrix: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXEntityMatrix".}
proc xSetFXTexture*(effect: Handle, name: cstring, texture: Handle, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXTexture".}
proc xSetFXMatrixSemantic*(effect: Handle, name: cstring, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXMatrixSemantic".}
proc xDeleteFXConstant*(effect: Handle, name: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteFXConstant".}
proc xClearFXConstants*(effect: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearFXConstants".}
proc xSetFXTechnique*(effect: Handle, name: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFXTechnique".}
 
# emitters commands
proc xCreateEmitter*(psystem: Handle, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateEmitter".}
proc xEmitterEnable*(emitter: Handle, state: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterEnable".}
proc xEmitterEnabled*(emitter: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterEnabled".}
proc xEmitterGetPSystem*(emitter: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterGetPSystem".}
proc xEmitterAddParticle*(emitter: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterAddParticle".}
proc xEmitterFreeParticle*(emitter: Handle, particle: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterFreeParticle".}
proc xEmitterValidateParticle*(emitter: Handle, particle: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterValidateParticle".}
proc xEmitterCountParticles*(emitter: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterCountParticles".}
proc xEmitterGetParticle*(emitter: Handle, index: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterGetParticle".}
proc xEmitterAlive*(emitter: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitterAlive".}
 
# entity_animation commands
proc xExtractAnimSeq*(entity: Handle, firstFrame: int, lastFrame: int, sequence: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xExtractAnimSeq".}
proc xLoadAnimSeq*(entity: Handle, path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadAnimSeq".}
proc xSetAnimSpeed*(entity: Handle, speed: float32, rootBone: cstring = "") {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetAnimSpeed".}
proc xAnimSpeed*(entity: Handle, rootBone: cstring = ""): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAnimSpeed".}
proc xAnimating*(entity: Handle, rootBone: cstring = ""): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAnimating".}
proc xAnimTime*(entity: Handle, rootBone: cstring = ""): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAnimTime".}
proc xAnimate*(entity: Handle, mode: int = 1, speed: float32 = 1.0f, sequence: int = 0, translate: float32 = 0.0f, rootBone: cstring = "") {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAnimate".}
proc xAnimSeq*(entity: Handle, rootBone: cstring = ""): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAnimSeq".}
proc xAnimLength*(entity: Handle, rootBone: cstring = ""): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAnimLength".}
proc xSetAnimTime*(entity: Handle, time: float32, sequence: int, rootBone: cstring = "") {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetAnimTime".}
proc xSetAnimFrame*(entity: Handle, frame: float32, sequence: int, rootBone: cstring = "") {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetAnimFrame".}
 
# entity_control commands
proc xEntityAutoFade*(entity: Handle, nearRange: float32, farRange: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAutoFade".}
proc xEntityOrder*(entity: Handle, order: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityOrder".}
proc xFreeEntity*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeEntity".}
proc xCopyEntity*(entity: Handle, parent: Handle = NULL, cloneBuffers: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCopyEntity".}
proc xPaintEntity*(entity: Handle, brush: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPaintEntity".}
proc xEntityShininess*(entity: Handle, shininess: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityShininess".}
proc xEntityPickMode*(entity: Handle, mode: int, obscurer: bool = true, recursive: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityPickMode".}
proc xEntityTexture*(entity: Handle, texture: Handle, frame: int = 0, index: int = 0, isRecursive: int = 1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityTexture".}
proc xEntityFX*(entity: Handle, fx: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityFX".}
proc xGetParent*(entity: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetParent".}
proc xSetFrustumSphere*(entity: Handle, x: float32, y: float32, z: float32, radii: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFrustumSphere".}
proc xCalculateFrustumVolume*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCalculateFrustumVolume".}
proc xEntityParent*(entity: Handle, parent: Handle = NULL, isGlobal: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityParent".}
proc xShowEntity*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xShowEntity".}
proc xHideEntity*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xHideEntity".}
proc xNameEntity*(entity: Handle, name: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xNameEntity".}
proc xSetEntityQuaternion*(entity: Handle, quaternion: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEntityQuaternion".}
proc xSetEntityMatrix*(entity: Handle, matrix: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEntityMatrix".}
proc xEntityAlpha*(entity: Handle, alpha: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAlpha".}
proc xEntityColor*(entity: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityColor".}
proc xEntitySpecularColor*(entity: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySpecularColor".}
proc xEntityAmbientColor*(entity: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAmbientColor".}
proc xEntityEmissiveColor*(entity: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityEmissiveColor".}
proc xEntityBlend*(entity: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityBlend".}
proc xEntityAlphaRef*(entity: Handle, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAlphaRef".}
proc xEntityAlphaFunc*(entity: Handle, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAlphaFunc".}
proc xCreateInstance*(entity: Handle, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateInstance".}
proc xFreezeInstances*(entity: Handle, enable: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreezeInstances".}
proc xInstancingAvaliable*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xInstancingAvaliable".}
proc xGetEntityWorld*(entity: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityWorld".}
proc xSetEntityWorld*(entity: Handle, world: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEntityWorld".}
 
# entity_movement commands
proc xScaleEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xScaleEntity".}
proc xPositionEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPositionEntity".}
proc xMoveEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMoveEntity".}
proc xTranslateEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTranslateEntity".}
proc xRotateEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRotateEntity".}
proc xTurnEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTurnEntity".}
proc xPointEntity*(entity1: Handle, entity2: Handle, roll: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPointEntity".}
proc xAlignToVector*(entity: Handle, x: float32, y: float32, z: float32, axis: int, factor: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAlignToVector".}
 
# entity_state commands
proc xEntityDistance*(entity1: Handle, entity2: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityDistance".}
proc xGetMatElement*(entity: Handle, row: int, col: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMatElement".}
proc xEntityClass*(entity: Handle): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityClass".}
proc xGetEntityBrush*(entity: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityBrush".}
proc xEntityX*(entity: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityX".}
proc xEntityY*(entity: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityY".}
proc xEntityZ*(entity: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityZ".}
proc xEntityVisible*(entity: Handle, destination: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityVisible".}
proc xEntityScaleX*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityScaleX".}
proc xEntityScaleY*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityScaleY".}
proc xEntityScaleZ*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityScaleZ".}
proc xEntityRoll*(entity: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityRoll".}
proc xEntityYaw*(entity: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityYaw".}
proc xEntityPitch*(entity: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityPitch".}
proc xEntityName*(entity: Handle): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityName".}
proc xCountChildren*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCountChildren".}
proc xGetChild*(entity: Handle, index: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetChild".}
proc xEntityInView*(entity: Handle, camera: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityInView".}
proc xFindChild*(entity: Handle, name: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFindChild".}
proc xGetEntityMatrix*(entity: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityMatrix".}
proc xGetEntityAlpha*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityAlpha".}
proc xGetAlphaRef*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetAlphaRef".}
proc xGetAlphaFunc*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetAlphaFunc".}
proc xEntityRed*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityRed".}
proc xEntityGreen*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGreen".}
proc xEntityBlue*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityBlue".}
proc xGetEntityShininess*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityShininess".}
proc xGetEntityBlend*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityBlend".}
proc xGetEntityFX*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEntityFX".}
proc xEntityHidden*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityHidden".}
proc xEntitiesBBIntersect*(entity1: Handle, entity2: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitiesBBIntersect".}
 
# filesystems commands
proc xMountPackFile*(path: cstring, mountpoint: cstring = "", password: cstring = ""): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMountPackFile".}
proc xUnmountPackFile*(packfile: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xUnmountPackFile".}
proc xOpenFile*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xOpenFile".}
proc xReadFile*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadFile".}
proc xWriteFile*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWriteFile".}
proc xCloseFile*(file: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCloseFile".}
proc xFilePos*(file: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFilePos".}
proc xSeekFile*(file: Handle, offset: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSeekFile".}
proc xFileType*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFileType".}
proc xFileSize*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFileSize".}
proc xFileCreationTime*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFileCreationTime".}
proc xFileCreationTimeStr*(path: cstring): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFileCreationTimeStr".}
proc xFileModificationTime*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFileModificationTime".}
proc xFileModificationTimeStr*(path: cstring): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFileModificationTimeStr".}
proc xReadDir*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadDir".}
proc xCloseDir*(handle: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCloseDir".}
proc xNextFile*(handle: int): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xNextFile".}
proc xCurrentDir*(): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCurrentDir".}
proc xChangeDir*(path: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xChangeDir".}
proc xCreateDir*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateDir".}
proc xDeleteDir*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteDir".}
proc xCopyFile*(pathSrc: cstring, pathDest: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCopyFile".}
proc xDeleteFile*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteFile".}
proc xEof*(file: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEof".}
proc xReadByte*(file: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadByte".}
proc xReadShort*(file: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadShort".}
proc xReadInt*(file: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadInt".}
proc xReadFloat*(file: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadFloat".}
proc xReadString*(file: Handle): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadString".}
proc xReadLine*(file: Handle, ls_flag: int = 0): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadLine".}
proc xWriteByte*(file: Handle, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWriteByte".}
proc xWriteShort*(file: Handle, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWriteShort".}
proc xWriteInt*(file: Handle, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWriteInt".}
proc xWriteFloat*(file: Handle, value: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWriteFloat".}
proc xWriteString*(file: Handle, value: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWriteString".}
proc xWriteLine*(file: Handle, value: cstring, ls_flag: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWriteLine".}
 
# fonts commands
proc xLoadFont*(name: cstring, height: int, bold: bool = false, italic: bool = false, underline: bool = false, fontface: cstring = ""): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadFont".}
proc xText*(x: float32, y: float32, textString: cstring, centerx: bool = false, centery: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xText".}
proc xSetFont*(font: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetFont".}
proc xFreeFont*(font: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeFont".}
proc xFontWidth*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFontWidth".}
proc xFontHeight*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFontHeight".}
proc xStringWidth*(textString: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xStringWidth".}
proc xStringHeight*(textString: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xStringHeight".}
 
# graphics commands
proc xWinMessage*(message: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWinMessage".}
proc xGetMaxPixelShaderVersion*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMaxPixelShaderVersion".}
proc xLine*(x1: int, y1: int, x2: int, y2: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLine".}
proc xRect*(x: int, y: int, width: int, height: int, solid: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRect".}
proc xRectsOverlap*(x1: int, y1: int, width1: int, height1: int, x2: int, y2: int, width2: int, height2: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRectsOverlap".}
proc xViewport*(x: int, y: int, width: int, height: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xViewport".}
proc xOval*(x: int, y: int, width: int, height: int, solid: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xOval".}
proc xOrigin*(x: int, y: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xOrigin".}
proc xGetMaxVertexShaderVersion*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMaxVertexShaderVersion".}
proc xGetMaxAntiAlias*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMaxAntiAlias".}
proc xGetMaxTextureFiltering*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMaxTextureFiltering".}
proc xSetAntiAliasType*(typeID: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetAntiAliasType".}
proc xAppTitle*(title: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAppTitle".}
proc xSetWND*(window: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetWND".}
proc xSetRenderWindow*(window: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetRenderWindow".}
proc xSetTopWindow*(window: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetTopWindow".}
proc xDestroyRenderWindow*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDestroyRenderWindow".}
proc xFlip*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFlip".}
proc xBackBuffer*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBackBuffer".}
proc xLockBuffer*(buffer: int = NULL) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLockBuffer".}
proc xUnlockBuffer*(buffer: int = NULL) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xUnlockBuffer".}
proc xWritePixelFast*(x: int, y: int, argb: int, buffer: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWritePixelFast".}
proc xReadPixelFast*(x: int, y: int, buffer: int = -1): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadPixelFast".}
proc xGetPixels*(buffer: int = -1): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetPixels".}
proc xSaveBuffer*(buffer: int, path: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSaveBuffer".}
proc xGetCurrentBuffer*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetCurrentBuffer".}
proc xBufferWidth*(buffer: int = NULL): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferWidth".}
proc xBufferHeight*(buffer: int = NULL): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xBufferHeight".}
proc xCatchTimestamp*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCatchTimestamp".}
proc xGetElapsedTime*(timeStamp: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetElapsedTime".}
proc xSetBuffer*(buffer: int = NULL) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetBuffer".}
proc xSetMRT*(buffer: Handle, frame: int, index: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetMRT".}
proc xUnSetMRT*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xUnSetMRT".}
proc xGetNumberRT*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetNumberRT".}
proc xTextureBuffer*(texture: Handle, frame: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureBuffer".}
proc xLoadBuffer*(buffer: int, path: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadBuffer".}
proc xWritePixel*(x: int, y: int, argb: int, buffer: int = NULL) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWritePixel".}
proc xCopyPixel*(sx: int, sy: int, sourceBuffer: int, dx: int, dy: int, destinationBuffer: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCopyPixel".}
proc xCopyPixelFast*(sx: int, sy: int, sourceBuffer: int, dx: int, dy: int, destinationBuffer: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCopyPixelFast".}
proc xCopyRect*(sx: int, sy: int, sw: int, sh: int, dx: int, dy: int, sourceBuffer: int, destinationBuffer: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCopyRect".}
proc xGraphicsBuffer*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGraphicsBuffer".}
proc xGetColor*(x: int, y: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetColor".}
proc xReadPixel*(x: int, y: int, buffer: int = NULL): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReadPixel".}
proc xGraphicsWidth*(isVirtual: bool = true): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGraphicsWidth".}
proc xGraphicsHeight*(isVirtual: bool = true): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGraphicsHeight".}
proc xGraphicsDepth*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGraphicsDepth".}
proc xColorAlpha*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xColorAlpha".}
proc xColorRed*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xColorRed".}
proc xColorGreen*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xColorGreen".}
proc xColorBlue*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xColorBlue".}
proc xClsColor*(red: int, green: int, blue: int, alpha: int = 255) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClsColor".}
proc xClearWorld*(entities: bool = true, brushes: bool = true, textures: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearWorld".}
proc xColor*(red: int, green: int, blue: int, alpha: int = 255) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xColor".}
proc xCls*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCls".}
proc xUpdateWorld*(speed: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xUpdateWorld".}
proc xRenderEntity*(camera: Handle, entity: Handle, tween: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRenderEntity".}
proc xRenderWorld*(tween: float32 = 1.0f, renderShadows: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRenderWorld".}
proc xSetAutoTB*(flag: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetAutoTB".}
proc xMaxClipPlanes*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMaxClipPlanes".}
proc xWireframe*(state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWireframe".}
proc xDither*(state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDither".}
proc xSetSkinningMethod*(skinMethod: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetSkinningMethod".}
proc xTrisRendered*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTrisRendered".}
proc xDIPCounter*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDIPCounter".}
proc xSurfRendered*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfRendered".}
proc xEntityRendered*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityRendered".}
proc xAmbientLight*(red: int, green: int, blue: int, world: Handle = NULL) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAmbientLight".}
proc xGetFPS*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetFPS".}
proc xAntiAlias*(state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAntiAlias".}
proc xSetTextureFiltering*(filter: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetTextureFiltering".}
proc xStretchRect*(texture1: Handle, x1: int, y1: int, width1: int, height1: int, texture2: Handle, x2: int, y2: int, width2: int, height2: int, filter: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xStretchRect".}
proc xStretchBackBuffer*(texture: Handle, x: int, y: int, width: int, height: int, filter: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xStretchBackBuffer".}
proc xGetDevice*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetDevice".}
proc xReleaseGraphics*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xReleaseGraphics".}
proc xShowPointer*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xShowPointer".}
proc xHidePointer*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xHidePointer".}
proc xCreateDSS*(width: int, height: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateDSS".}
proc xDeleteDSS*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteDSS".}
proc xGridColor*(centerRed: int, centerGreen: int, centerBlue: int, gridRed: int, gridGreen: int, gridBlue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGridColor".}
proc xDrawGrid*(x: float32, z: float32, gridSize: int, range: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawGrid".}
proc xDrawBBox*(draw: bool, zOn: bool, red: int, green: int, blue: int, alpha: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawBBox".}
proc xGraphics3D*(width: int = 1024, height: int = 768, depth: int = 0, mode: int = 0, vsync: int = 1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGraphics3D".}
proc xGraphicsAspectRatio*(aspectRatio: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGraphicsAspectRatio".}
proc xGraphicsBorderColor*(red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGraphicsBorderColor".}
proc xGetRenderWindow*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetRenderWindow".}
proc xKey*(key: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xKey".}
proc xSetEngineSetting*(parameter: cstring, value: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetEngineSetting".}
proc xGetEngineSetting*(parameter: cstring): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetEngineSetting".}
proc xHWInstancingAvailable*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xHWInstancingAvailable".}
proc xShaderInstancingAvailable*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xShaderInstancingAvailable".}
proc xSetShaderLayer*(layer: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetShaderLayer".}
proc xGetShaderLayer*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetShaderLayer".}
proc xDrawMovementGizmo*(x: float32, y: float32, z: float32, selectMask: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawMovementGizmo".}
proc xDrawScaleGizmo*(x: float32, y: float32, z: float32, selectMask: int = 0, sx: float32 = 1.0f, sy: float32 = 1.0f, sz: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawScaleGizmo".}
proc xDrawRotationGizmo*(x: float32, y: float32, z: float32, selectMask: int = 0, pitch: float32 = 0.0f, yaw: float32 = 0.0f, roll: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawRotationGizmo".}
proc xCheckMovementGizmo*(x: float32, y: float32, z: float32, camera: Handle, mx: int, my: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCheckMovementGizmo".}
proc xCheckScaleGizmo*(x: float32, y: float32, z: float32, camera: Handle, mx: int, my: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCheckScaleGizmo".}
proc xCheckRotationGizmo*(x: float32, y: float32, z: float32, camera: Handle, mx: int, my: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCheckRotationGizmo".}
proc xCaptureWorld*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCaptureWorld".}
proc xCountGfxModes*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCountGfxModes".}
proc xGfxModeWidth*(mode: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGfxModeWidth".}
proc xGfxModeHeight*(mode: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGfxModeHeight".}
proc xGfxModeDepth*(mode: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGfxModeDepth".}
proc xGfxModeExists*(width: int, height: int, depth: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGfxModeExists".}
proc xAppWindowFrame*(state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAppWindowFrame".}
proc xMillisecs*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMillisecs".}
proc xDeltaTime*(fromInit: bool = false): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeltaTime".}
proc xDeltaValue*(value: float32, time: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeltaValue".}
proc xAddDeviceLostCallback*(f: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAddDeviceLostCallback".}
proc xDeleteDeviceLostCallback*(f: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteDeviceLostCallback".}
proc xDeinit*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeinit".}
 
# images commands
proc xImageColor*(image: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageColor".}
proc xImageAlpha*(image: Handle, alpha: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageAlpha".}
proc xImageBuffer*(image: Handle, frame: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageBuffer".}
proc xCreateImage*(width: int, height: int, frame: int = 1): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateImage".}
proc xGrabImage*(image: Handle, x: int, y: int, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGrabImage".}
proc xFreeImage*(image: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeImage".}
proc xLoadImage*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadImage".}
proc xLoadAnimImage*(path: cstring, width: int, height: int, startFrame: int, frames: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadAnimImage".}
proc xSaveImage*(image: Handle, path: cstring, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSaveImage".}
proc xDrawImage*(image: Handle, x: float32, y: float32, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawImage".}
proc xDrawImageRect*(image: Handle, x: float32, y: float32, rectx: float32, recty: float32, rectWidth: float32, rectHeight: float32, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawImageRect".}
proc xScaleImage*(image: Handle, x: float32, y: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xScaleImage".}
proc xResizeImage*(image: Handle, width: float32, height: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xResizeImage".}
proc xRotateImage*(image: Handle, angle: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRotateImage".}
proc xImageAngle*(image: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageAngle".}
proc xImageWidth*(image: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageWidth".}
proc xImageHeight*(image: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageHeight".}
proc xImagesCollide*(image1: Handle, x1: int, y1: int, frame1: int, image2: Handle, x2: int, y2: int, frame2: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImagesCollide".}
proc xImageRectCollide*(image: Handle, x: int, y: int, frame: int, rectx: int, recty: int, rectWidth: int, rectHeight: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageRectCollide".}
proc xImageRectOverlap*(image: Handle, x: float32, y: float32, rectx: float32, recty: float32, rectWidth: float32, rectHeight: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageRectOverlap".}
proc xImageXHandle*(image: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageXHandle".}
proc xImageYHandle*(image: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageYHandle".}
proc xHandleImage*(image: Handle, x: float32, y: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xHandleImage".}
proc xMidHandle*(image: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMidHandle".}
proc xAutoMidHandle*(state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAutoMidHandle".}
proc xTileImage*(image: Handle, x: float32, y: float32, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTileImage".}
proc xImagesOverlap*(image1: Handle, x1: float32, y1: float32, image2: Handle, x2: float32, y2: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImagesOverlap".}
proc xMaskImage*(image: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMaskImage".}
proc xCopyImage*(image: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCopyImage".}
proc xDrawBlock*(image: Handle, x: float32, y: float32, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawBlock".}
proc xDrawBlockRect*(image: Handle, x: float32, y: float32, rectx: float32, recty: float32, rectWidth: float32, rectHeight: float32, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawBlockRect".}
proc xImageActualWidth*(image: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageActualWidth".}
proc xImageActualHeight*(image: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xImageActualHeight".}
 
# inputs commands
proc xFlushKeys*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFlushKeys".}
proc xFlushMouse*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFlushMouse".}
proc xKeyHit*(key: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xKeyHit".}
proc xKeyUp*(key: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xKeyUp".}
proc xWaitKey*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWaitKey".}
proc xMouseHit*(key: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseHit".}
proc xKeyDown*(key: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xKeyDown".}
proc xGetKey*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetKey".}
proc xMouseDown*(key: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseDown".}
proc xMouseUp*(key: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseUp".}
proc xGetMouse*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMouse".}
proc xMouseX*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseX".}
proc xMouseY*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseY".}
proc xMouseZ*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseZ".}
proc xMouseXSpeed*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseXSpeed".}
proc xMouseYSpeed*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseYSpeed".}
proc xMouseZSpeed*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseZSpeed".}
proc xMouseSpeed*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMouseSpeed".}
proc xMoveMouse*(x: int, y: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMoveMouse".}
 
# joysticks commands
proc xJoyType*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyType".}
proc xJoyDown*(key: int, portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyDown".}
proc xJoyHit*(key: int, portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyHit".}
proc xGetJoy*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetJoy".}
proc xFlushJoy*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFlushJoy".}
proc xWaitJoy*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWaitJoy".}
proc xJoyX*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyX".}
proc xJoyY*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyY".}
proc xJoyZ*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyZ".}
proc xJoyU*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyU".}
proc xJoyV*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyV".}
proc xJoyPitch*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyPitch".}
proc xJoyYaw*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyYaw".}
proc xJoyRoll*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyRoll".}
proc xJoyHat*(portID: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyHat".}
proc xJoyXDir*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyXDir".}
proc xJoyYDir*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyYDir".}
proc xJoyZDir*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyZDir".}
proc xJoyUDir*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyUDir".}
proc xJoyVDir*(portID: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJoyVDir".}
proc xCountJoys*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCountJoys".}
 
# lights commands
proc xCreateLight*(typeID: int = 1): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateLight".}
proc xLightShadowEpsilons*(light: Handle, epsilon1: float32, epsilon2: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLightShadowEpsilons".}
proc xLightEnableShadows*(light: Handle, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLightEnableShadows".}
proc xLightShadowsEnabled*(light: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLightShadowsEnabled".}
proc xLightRange*(light: Handle, range: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLightRange".}
proc xLightColor*(light: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLightColor".}
proc xLightConeAngles*(light: Handle, inner: float32, outer: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLightConeAngles".}
 
# logging commands
proc xCreateLog*(target: int = 1, level: int = 0, filename: cstring = "xors_log.html", cssfilename: cstring = ""): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateLog".}
proc xCloseLog*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCloseLog".}
proc xGetLogString*(): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetLogString".}
proc xClearLogString*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearLogString".}
proc xSetLogLevel*(level: int = 2) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetLogLevel".}
proc xSetLogTarget*(target: int = 1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetLogTarget".}
proc xGetLogLevel*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetLogLevel".}
proc xGetLogTarget*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetLogTarget".}
proc xLogInfo*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLogInfo".}
proc xLogMessage*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLogMessage".}
proc xLogWarning*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLogWarning".}
proc xLogError*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLogError".}
proc xLogFatal*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLogFatal".}
 
# meshes commands
proc xCreateMesh*(parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateMesh".}
proc xLoadMesh*(path: cstring, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadMesh".}
proc xLoadMeshWithChild*(path: cstring, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadMeshWithChild".}
proc xLoadAnimMesh*(path: cstring, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadAnimMesh".}
proc xCreateCube*(parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateCube".}
proc xCreateSphere*(segments: int = 16, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateSphere".}
proc xCreateCylinder*(segments: int = 16, solid: bool = true, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateCylinder".}
proc xCreateTorus*(segments: int = 16, R: float32 = 1.0f, r_tube: float32 = 0.025f, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateTorus".}
proc xCreateCone*(segments: int = 16, solid: bool = true, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateCone".}
proc xCopyMesh*(entity: Handle, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCopyMesh".}
proc xAddMesh*(source: Handle, destination: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAddMesh".}
proc xFlipMesh*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFlipMesh".}
proc xPaintMesh*(entity: Handle, brush: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPaintMesh".}
proc xFitMesh*(entity: Handle, x: float32, y: float32, z: float32, width: float32, height: float32, depth: float32, uniform: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFitMesh".}
proc xMeshWidth*(entity: Handle, recursive: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMeshWidth".}
proc xMeshHeight*(entity: Handle, recursive: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMeshHeight".}
proc xMeshDepth*(entity: Handle, recursive: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMeshDepth".}
proc xScaleMesh*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xScaleMesh".}
proc xRotateMesh*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRotateMesh".}
proc xPositionMesh*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPositionMesh".}
proc xUpdateNormals*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xUpdateNormals".}
proc xUpdateN*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xUpdateN".}
proc xUpdateTB*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xUpdateTB".}
proc xMeshesBBIntersect*(entity1: Handle, entity2: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMeshesBBIntersect".}
proc xMeshesIntersect*(entity1: Handle, entity2: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMeshesIntersect".}
proc xGetMeshVB*(entity: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMeshVB".}
proc xGetMeshIB*(entity: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMeshIB".}
proc xGetMeshVBSize*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMeshVBSize".}
proc xGetMeshIBSize*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetMeshIBSize".}
proc xDeleteMeshVB*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteMeshVB".}
proc xDeleteMeshIB*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteMeshIB".}
proc xCountSurfaces*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCountSurfaces".}
proc xGetSurface*(entity: Handle, index: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetSurface".}
proc xCreatePivot*(parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreatePivot".}
proc xFindSurface*(entity: Handle, brush: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFindSurface".}
proc xCreatePoly*(sides: int = 0, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreatePoly".}
proc xMeshSingleSurface*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMeshSingleSurface".}
proc xSaveMesh*(entity: Handle, path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSaveMesh".}
proc xLightMesh*(entity: Handle, red: int, green: int, blue: int, range: float32 = 0.0f, lightX: float32 = 0.0f, lightY: float32 = 0.0f, lightZ: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLightMesh".}
proc xMeshPrimitiveType*(entity: Handle, ptype: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMeshPrimitiveType".}
 
# particles commands
proc xParticlePosition*(particle: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticlePosition".}
proc xParticleX*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleX".}
proc xParticleY*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleY".}
proc xParticleZ*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleZ".}
proc xParticleVeclocity*(particle: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleVeclocity".}
proc xParticleVX*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleVX".}
proc xParticleVY*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleVY".}
proc xParticleVZ*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleVZ".}
proc xParticleRotation*(particle: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleRotation".}
proc xParticlePitch*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticlePitch".}
proc xParticleYaw*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleYaw".}
proc xParticleRoll*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleRoll".}
proc xParticleTorque*(particle: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleTorque".}
proc xParticleTPitch*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleTPitch".}
proc xParticleTYaw*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleTYaw".}
proc xParticleTRoll*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleTRoll".}
proc xParticleSetAlpha*(particle: Handle, alpha: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleSetAlpha".}
proc xParticleGetAlpha*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleGetAlpha".}
proc xParticleColor*(particle: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleColor".}
proc xParticleRed*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleRed".}
proc xParticleGreen*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleGreen".}
proc xParticleBlue*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleBlue".}
proc xParticleScale*(particle: Handle, x: float32, y: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleScale".}
proc xParticleSX*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleSX".}
proc xParticleSY*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleSY".}
proc xParticleScaleSpeed*(particle: Handle, x: float32, y: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleScaleSpeed".}
proc xParticleScaleSpeedX*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleScaleSpeedX".}
proc xParticleScaleSpeedY*(particle: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xParticleScaleSpeedY".}
 
# physics commands
proc xEntityAddDummyShape*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddDummyShape".}
proc xEntityAddBoxShape*(entity: Handle, mass: float32, width: float32 = 0.0f, height: float32 = 0.0f, depth: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddBoxShape".}
proc xEntityAddSphereShape*(entity: Handle, mass: float32, radius: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddSphereShape".}
proc xEntityAddCapsuleShape*(entity: Handle, mass: float32, radius: float32 = 0.0f, height: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddCapsuleShape".}
proc xEntityAddConeShape*(entity: Handle, mass: float32, radius: float32 = 0.0f, height: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddConeShape".}
proc xEntityAddCylinderShape*(entity: Handle, mass: float32, width: float32 = 0.0f, height: float32 = 0.0f, depth: float32 = 0.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddCylinderShape".}
proc xEntityAddTriMeshShape*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddTriMeshShape".}
proc xEntityAddTriMeshShapeProxy*(entity: Handle, proxy: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddTriMeshShapeProxy".}
proc xEntityAddConvexShape*(entity: Handle, mass: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddConvexShape".}
proc xEntityAddConvexShapeProxy*(entity: Handle, proxy: Handle, mass: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddConvexShapeProxy".}
proc xEntityAddConcaveShape*(entity: Handle, mass: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddConcaveShape".}
proc xEntityAddConcaveShapeProxy*(entity: Handle, proxy: Handle, mass: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddConcaveShapeProxy".}
proc xEntityAddTerrainShape*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddTerrainShape".}
proc xEntityAttachBody*(entity: Handle, body: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAttachBody".}
proc xEntityDetachBody*(entity: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityDetachBody".}
proc xFreeEntityBody*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeEntityBody".}
proc xEntityAddCompoundShape*(entity: Handle, mass: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddCompoundShape".}
proc xEntityCompoundAddBox*(entity: Handle, width: float32, height: float32, depth: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundAddBox".}
proc xEntityCompoundAddSphere*(entity: Handle, radius: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundAddSphere".}
proc xEntityCompoundAddCapsule*(entity: Handle, radius: float32, height: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundAddCapsule".}
proc xEntityCompoundAddCone*(entity: Handle, radius: float32, height: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundAddCone".}
proc xEntityCompoundAddCylinder*(entity: Handle, radius: float32, height: float32): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundAddCylinder".}
proc xEntityCompoundCountChildren*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundCountChildren".}
proc xEntityCompoundRemoveChild*(entity: Handle, index: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundRemoveChild".}
proc xEntityCompoundChildSetPosition*(entity: Handle, index: int, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildSetPosition".}
proc xEntityCompoundChildGetX*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildGetX".}
proc xEntityCompoundChildGetY*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildGetY".}
proc xEntityCompoundChildGetZ*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildGetZ".}
proc xEntityCompoundChildSetRotation*(entity: Handle, index: int, pitch: float32, yaw: float32, roll: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildSetRotation".}
proc xEntityCompoundChildGetPitch*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildGetPitch".}
proc xEntityCompoundChildGetYaw*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildGetYaw".}
proc xEntityCompoundChildGetRoll*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCompoundChildGetRoll".}
proc xCreateHingeJoint*(firstBody: Handle, secondBody: Handle, pivotX: float32, pivotY: float32, pivotZ: float32, axisX: float32, axisY: float32, axisZ: float32, isGlobal: bool = false): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateHingeJoint".}
proc xCreateBallJoint*(firstBody: Handle, secondBody: Handle, pivotX: float32, pivotY: float32, pivotZ: float32, isGlobal: bool = false): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateBallJoint".}
proc xCreateD6Joint*(firstBody: Handle, secondBody: Handle, pivot1X: float32, pivot1Y: float32, pivot1Z: float32, pivot2X: float32, pivot2Y: float32, pivot2Z: float32, isGlobal1: bool = false, isGlobal2: bool = false): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateD6Joint".}
proc xCreateD6SpringJoint*(firstBody: Handle, secondBody: Handle, pivot1X: float32, pivot1Y: float32, pivot1Z: float32, pivot2X: float32, pivot2Y: float32, pivot2Z: float32, isGlobal1: bool = false, isGlobal2: bool = false): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateD6SpringJoint".}
proc xJointHingeGetAngle*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointHingeGetAngle".}
proc xJointD6GetPitchAngle*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetPitchAngle".}
proc xJointD6GetYawAngle*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetYawAngle".}
proc xJointD6GetRollAngle*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetRollAngle".}
proc xJointD6GetAngle*(joint: Handle, axis: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetAngle".}
proc xJointDisableCollisions*(joint: Handle, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointDisableCollisions".}
proc xJointEnable*(joint: Handle, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointEnable".}
proc xJointIsEnabled*(joint: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointIsEnabled".}
proc xJointGetImpulse*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointGetImpulse".}
proc xFreeJoint*(joint: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeJoint".}
proc xJointBallSetPivot*(joint: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointBallSetPivot".}
proc xJointBallGetPivotX*(joint: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointBallGetPivotX".}
proc xJointBallGetPivotY*(joint: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointBallGetPivotY".}
proc xJointBallGetPivotZ*(joint: Handle, isGlobal: bool = false): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointBallGetPivotZ".}
proc xJointD6SetLimits*(joint: Handle, axis: int, lower: float32, upper: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SetLimits".}
proc xJointD6SetLowerLinearLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SetLowerLinearLimits".}
proc xJointD6SetUpperLinearLimits*(joint: Handle, upperX: float32, upperY: float32, upperZ: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SetUpperLinearLimits".}
proc xJointD6SetLowerAngularLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SetLowerAngularLimits".}
proc xJointD6SetUpperAngularLimits*(joint: Handle, upperX: float32, upperY: float32, upperZ: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SetUpperAngularLimits".}
proc xJointD6SetLinearLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32, upperX: float32, upperY: float32, upperZ: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SetLinearLimits".}
proc xJointD6SetAngularLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32, upperX: float32, upperY: float32, upperZ: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SetAngularLimits".}
proc xJointD6GetLinearLowerX*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetLinearLowerX".}
proc xJointD6GetLinearLowerY*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetLinearLowerY".}
proc xJointD6GetLinearLowerZ*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetLinearLowerZ".}
proc xJointD6GetLinearUpperX*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetLinearUpperX".}
proc xJointD6GetLinearUpperY*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetLinearUpperY".}
proc xJointD6GetLinearUpperZ*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetLinearUpperZ".}
proc xJointD6GetAngularLowerX*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetAngularLowerX".}
proc xJointD6GetAngularLowerY*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetAngularLowerY".}
proc xJointD6GetAngularLowerZ*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetAngularLowerZ".}
proc xJointD6GetAngularUpperX*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetAngularUpperX".}
proc xJointD6GetAngularUpperY*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetAngularUpperY".}
proc xJointD6GetAngularUpperZ*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6GetAngularUpperZ".}
proc xJointD6SpringSetParam*(joint: Handle, index: int, enabled: int, damping: float32 = 1.0f, stiffness: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointD6SpringSetParam".}
proc xJointHingeSetAxis*(joint: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointHingeSetAxis".}
proc xJointHingeSetLimits*(joint: Handle, lowerLimit: float32, upperLimit: float32, softness: float32 = 0.9f, biasFactor: float32 = 0.3f, relaxationFactor: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointHingeSetLimits".}
proc xJointHingeGetLowerLimit*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointHingeGetLowerLimit".}
proc xJointHingeGetUpperLimit*(joint: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointHingeGetUpperLimit".}
proc xJointEnableMotor*(joint: Handle, enabled: int, targetVelocity: float32, maxForce: float32, index: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointEnableMotor".}
proc xJointHingeSetMotorTarget*(joint: Handle, targetAngle: float32, deltaTime: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointHingeSetMotorTarget".}
proc xJointGetEntityA*(joint: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointGetEntityA".}
proc xJointGetEntityB*(joint: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xJointGetEntityB".}
proc xEntityApplyCentralForce*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityApplyCentralForce".}
proc xEntityApplyCentralImpulse*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityApplyCentralImpulse".}
proc xEntityApplyTorque*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityApplyTorque".}
proc xEntityApplyTorqueImpulse*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityApplyTorqueImpulse".}
proc xEntityApplyForce*(entity: Handle, x: float32, y: float32, z: float32, pointx: float32, pointy: float32, pointz: float32, isGlobal: bool = true, globalPoint: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityApplyForce".}
proc xEntityApplyImpulse*(entity: Handle, x: float32, y: float32, z: float32, pointx: float32, pointy: float32, pointz: float32, isGlobal: bool = true, globalPoint: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityApplyImpulse".}
proc xEntityReleaseForces*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityReleaseForces".}
proc xWorldSetGravity*(x: float32, y: float32, z: float32, world: Handle = NULL) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWorldSetGravity".}
proc xWorldGetGravityX*(world: Handle = NULL): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWorldGetGravityX".}
proc xWorldGetGravityY*(world: Handle = NULL): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWorldGetGravityY".}
proc xWorldGetGravityZ*(world: Handle = NULL): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWorldGetGravityZ".}
proc xEntitySetGravity*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetGravity".}
proc xEntityGetGravityX*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetGravityX".}
proc xEntityGetGravityY*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetGravityY".}
proc xEntityGetGravityZ*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetGravityZ".}
proc xEntitySetLinearVelocity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetLinearVelocity".}
proc xEntityGetLinearVelocityX*(entity: Handle, isGlobal: bool = true): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearVelocityX".}
proc xEntityGetLinearVelocityY*(entity: Handle, isGlobal: bool = true): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearVelocityY".}
proc xEntityGetLinearVelocityZ*(entity: Handle, isGlobal: bool = true): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearVelocityZ".}
proc xEntitySetAngularVelocity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetAngularVelocity".}
proc xEntityGetAngularVelocityX*(entity: Handle, isGlobal: bool = true): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularVelocityX".}
proc xEntityGetAngularVelocityY*(entity: Handle, isGlobal: bool = true): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularVelocityY".}
proc xEntityGetAngularVelocityZ*(entity: Handle, isGlobal: bool = true): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularVelocityZ".}
proc xEntitySetDamping*(entity: Handle, linear: float32, angular: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetDamping".}
proc xEntityGetLinearDamping*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearDamping".}
proc xEntityGetAngularDamping*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularDamping".}
proc xEntitySetFriction*(entity: Handle, friction: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetFriction".}
proc xEntityGetFriction*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetFriction".}
proc xEntitySetAnisotropicFriction*(entity: Handle, fx: float32, fy: float32, fz: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetAnisotropicFriction".}
proc xEntityGetAnisotropicFrictionX*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAnisotropicFrictionX".}
proc xEntityGetAnisotropicFrictionY*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAnisotropicFrictionY".}
proc xEntityGetAnisotropicFrictionZ*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAnisotropicFrictionZ".}
proc xEntitySetLinearFactor*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetLinearFactor".}
proc xEntityGetLinearFactorX*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearFactorX".}
proc xEntityGetLinearFactorY*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearFactorY".}
proc xEntityGetLinearFactorZ*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearFactorZ".}
proc xEntitySetAngularFactor*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetAngularFactor".}
proc xEntityGetAngularFactorX*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularFactorX".}
proc xEntityGetAngularFactorY*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularFactorY".}
proc xEntityGetAngularFactorZ*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularFactorZ".}
proc xEntitySetRestitution*(entity: Handle, restitution: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetRestitution".}
proc xEntityGetRestitution*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetRestitution".}
proc xEntitySetMass*(entity: Handle, mass: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetMass".}
proc xEntityGetMass*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetMass".}
proc xEntityCountContacts*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCountContacts".}
proc xEntityGetContactX*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactX".}
proc xEntityGetContactY*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactY".}
proc xEntityGetContactZ*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactZ".}
proc xEntityGetContactNX*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactNX".}
proc xEntityGetContactNY*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactNY".}
proc xEntityGetContactNZ*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactNZ".}
proc xEntityGetContactDistance*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactDistance".}
proc xEntityGetContact*(entity: Handle, index: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContact".}
proc xEntityGetContactImpulse*(entity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactImpulse".}
proc xEntitySetCollisionGroup*(entity: Handle, group: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetCollisionGroup".}
proc xEntityGetCollisionGroup*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetCollisionGroup".}
proc xEntitySetContactGroup*(entity: Handle, group: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetContactGroup".}
proc xEntityGetContactGroup*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetContactGroup".}
proc xEntitySetRaycastGroup*(entity: Handle, group: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetRaycastGroup".}
proc xEntityGetRaycastGroup*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetRaycastGroup".}
proc xPhysicsSetCollisionFilter*(group0: int, group1: int, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsSetCollisionFilter".}
proc xPhysicsGetCollisionFilter*(group0: int, group1: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetCollisionFilter".}
proc xPhysicsSetContactFilter*(group0: int, group1: int, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsSetContactFilter".}
proc xPhysicsGetContactFilter*(group0: int, group1: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetContactFilter".}
proc xPhysicsSetRaycastFilter*(rayGroup: int, bodyGroup: int, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsSetRaycastFilter".}
proc xPhysicsGetRaycastFilter*(rayGroup: int, bodyGroup: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetRaycastFilter".}
proc xEntityIsSleeping*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityIsSleeping".}
proc xEntityDisableSleeping*(entity: Handle, state: int = 1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityDisableSleeping".}
proc xEntityWakeUp*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWakeUp".}
proc xEntitySleep*(entity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySleep".}
proc xEntitySetSleepingThresholds*(entity: Handle, linearThreshold: float32, angularThreshold: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntitySetSleepingThresholds".}
proc xEntityGetLinearSleepingThreshold*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetLinearSleepingThreshold".}
proc xEntityGetAngularSleepingThreshold*(entity: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityGetAngularSleepingThreshold".}
proc xPhysicsRayCast*(fromX: float32, fromY: float32, fromZ: float32, toX: float32, toY: float32, toZ: float32, rcType: int = 0, rayGroup: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsRayCast".}
proc xPhysicsGetHitEntity*(index: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitEntity".}
proc xPhysicsGetHitPointX*(index: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitPointX".}
proc xPhysicsGetHitPointY*(index: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitPointY".}
proc xPhysicsGetHitPointZ*(index: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitPointZ".}
proc xPhysicsGetHitNormalX*(index: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitNormalX".}
proc xPhysicsGetHitNormalY*(index: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitNormalY".}
proc xPhysicsGetHitNormalZ*(index: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitNormalZ".}
proc xPhysicsGetHitDistance*(index: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsGetHitDistance".}
proc xPhysicsCountHits*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsCountHits".}
proc xEntityBodyLocalPosition*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityBodyLocalPosition".}
proc xEntityBodyLocalRotation*(entity: Handle, pitch: float32, yaw: float32, roll: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityBodyLocalRotation".}
proc xEntityBodyLocalScale*(entity: Handle, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityBodyLocalScale".}
proc xWorldSetFrequency*(frequency: float32, world: Handle = NULL) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xWorldSetFrequency".}
proc xEntityMakeKinematic*(entity: Handle, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityMakeKinematic".}
proc xEntityIsKinematic*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityIsKinematic".}
proc xPhysicsDebugRender*(state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPhysicsDebugRender".}
proc xEntityDisableSimulation*(entity: Handle, state: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityDisableSimulation".}
proc xEntityHasBody*(entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityHasBody".}
proc xEntityCreateVehicle*(chassisEntity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCreateVehicle".}
proc xEntityFreeVehicle*(chassisEntity: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityFreeVehicle".}
proc xEntityCountWheels*(chassisEntity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCountWheels".}
proc xEntityAddWheel*(chassisEntity: Handle, wheelEntity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityAddWheel".}
proc xEntityWheelSetRadius*(chassisEntity: Handle, index: int, radius: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetRadius".}
proc xEntityWheelSetAxle*(chassisEntity: Handle, index: int, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetAxle".}
proc xEntityWheelSetRay*(chassisEntity: Handle, index: int, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetRay".}
proc xEntityWheelSetSuspensionLength*(chassisEntity: Handle, index: int, length: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetSuspensionLength".}
proc xEntityWheelSetBrake*(chassisEntity: Handle, index: int, brake: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetBrake".}
proc xEntityWheelSetMaxSuspensionForce*(chassisEntity: Handle, index: int, force: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetMaxSuspensionForce".}
proc xEntityWheelSetMaxSuspensionTravel*(chassisEntity: Handle, index: int, travel: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetMaxSuspensionTravel".}
proc xEntityWheelSetSuspensionStiffness*(chassisEntity: Handle, index: int, stiffness: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetSuspensionStiffness".}
proc xEntityWheelSetSuspensionDamping*(chassisEntity: Handle, index: int, damping: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetSuspensionDamping".}
proc xEntityWheelSetSuspensionCompression*(chassisEntity: Handle, index: int, compression: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetSuspensionCompression".}
proc xEntityWheelSetFriction*(chassisEntity: Handle, index: int, friction: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetFriction".}
proc xEntityWheelSetEngineForce*(chassisEntity: Handle, index: int, force: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetEngineForce".}
proc xEntityWheelSetRollInfluence*(chassisEntity: Handle, index: int, roll: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetRollInfluence".}
proc xEntityWheelSetRotation*(chassisEntity: Handle, index: int, rotation: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetRotation".}
proc xEntityWheelSetSteering*(chassisEntity: Handle, index: int, steering: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetSteering".}
proc xEntityWheelSetConnectionPoint*(chassisEntity: Handle, index: int, x: float32, y: float32, z: float32, isGlobal: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelSetConnectionPoint".}
proc xEntityWheelGetSuspensionLength*(chassisEntity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelGetSuspensionLength".}
proc xEntityWheelGetPitch*(chassisEntity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelGetPitch".}
proc xEntityWheelGetYaw*(chassisEntity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelGetYaw".}
proc xEntityWheelGetRoll*(chassisEntity: Handle, index: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelGetRoll".}
proc xEntityWheelGetContactEntity*(chassisEntity: Handle, index: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityWheelGetContactEntity".}
 
# posteffects commands
proc xLoadPostEffect*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadPostEffect".}
proc xFreePostEffect*(postEffect: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreePostEffect".}
proc xSetPostEffect*(index: int, postEffect: Handle, technique: cstring = "MainTechnique") {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetPostEffect".}
proc xRenderPostEffects*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRenderPostEffects".}
proc xSetPostEffectInt*(postEffect: Handle, name: cstring, value: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetPostEffectInt".}
proc xSetPostEffectFloat*(postEffect: Handle, name: cstring, value: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetPostEffectFloat".}
proc xSetPostEffectBool*(postEffect: Handle, name: cstring, value: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetPostEffectBool".}
proc xSetPostEffectVector*(postEffect: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetPostEffectVector".}
proc xSetPostEffectTexture*(postEffect: Handle, name: cstring, texture: Handle, frame: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetPostEffectTexture".}
proc xDeletePostEffectConstant*(postEffect: Handle, name: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeletePostEffectConstant".}
proc xClearPostEffectConstants*(postEffect: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearPostEffectConstants".}
 
# psystems commands
proc xCreatePSystem*(pointSprites: bool = false): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreatePSystem".}
proc xPSystemType*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemType".}
proc xPSystemSetBlend*(psystem: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetBlend".}
proc xPSystemGetBlend*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetBlend".}
proc xPSystemSetMaxParticles*(psystem: Handle, maxNumber: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetMaxParticles".}
proc xPSystemGetMaxParticles*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetMaxParticles".}
proc xPSystemSetEmitterLifetime*(psystem: Handle, lifetime: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetEmitterLifetime".}
proc xPSystemGetEmitterLifetime*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetEmitterLifetime".}
proc xPSystemSetParticleLifetime*(psystem: Handle, lifetime: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetParticleLifetime".}
proc xPSystemGetParticleLifetime*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetParticleLifetime".}
proc xPSystemSetCreationInterval*(psystem: Handle, interval: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetCreationInterval".}
proc xPSystemGetCreationInterval*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetCreationInterval".}
proc xPSystemSetCreationFrequency*(psystem: Handle, frequency: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetCreationFrequency".}
proc xPSystemGetCreationFrequency*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetCreationFrequency".}
proc xPSystemSetTexture*(psystem: Handle, texture: Handle, frames: int, speed: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetTexture".}
proc xPSystemGetTexture*(psystem: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTexture".}
proc xPSystemGetTextureFrames*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTextureFrames".}
proc xPSystemGetTextureAnimationSpeed*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTextureAnimationSpeed".}
proc xPSystemSetOffset*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetOffset".}
proc xPSystemGetOffsetMinX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetOffsetMinX".}
proc xPSystemGetOffsetMinY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetOffsetMinY".}
proc xPSystemGetOffsetMinZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetOffsetMinZ".}
proc xPSystemGetOffsetMaxX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetOffsetMaxX".}
proc xPSystemGetOffsetMaxY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetOffsetMaxY".}
proc xPSystemGetOffsetMaxZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetOffsetMaxZ".}
proc xPSystemSetVelocity*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetVelocity".}
proc xPSystemGetVelocityMinX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetVelocityMinX".}
proc xPSystemGetVelocityMinY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetVelocityMinY".}
proc xPSystemGetVelocityMinZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetVelocityMinZ".}
proc xPSystemGetVelocityMaxX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetVelocityMaxX".}
proc xPSystemGetVelocityMaxY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetVelocityMaxY".}
proc xPSystemGetVelocityMaxZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetVelocityMaxZ".}
proc xPSystemEnableFixedQuads*(psystem: Handle, state: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemEnableFixedQuads".}
proc xPSystemFixedQuadsUsed*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemFixedQuadsUsed".}
proc xPSystemSetTorque*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetTorque".}
proc xPSystemGetTorqueMinX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTorqueMinX".}
proc xPSystemGetTorqueMinY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTorqueMinY".}
proc xPSystemGetTorqueMinZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTorqueMinZ".}
proc xPSystemGetTorqueMaxX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTorqueMaxX".}
proc xPSystemGetTorqueMaxY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTorqueMaxY".}
proc xPSystemGetTorqueMaxZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetTorqueMaxZ".}
proc xPSystemSetGravity*(psystem: Handle, gravity: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetGravity".}
proc xPSystemGetGravity*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetGravity".}
proc xPSystemSetAlpha*(psystem: Handle, alpha: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetAlpha".}
proc xPSystemGetAlpha*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetAlpha".}
proc xPSystemSetFadeSpeed*(psystem: Handle, speed: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetFadeSpeed".}
proc xPSystemGetFadeSpeed*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetFadeSpeed".}
proc xPSystemSetParticleSize*(psystem: Handle, minx: float32, miny: float32, maxx: float32, maxy: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetParticleSize".}
proc xPSystemGetSizeMinX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetSizeMinX".}
proc xPSystemGetSizeMinY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetSizeMinY".}
proc xPSystemGetSizeMaxX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetSizeMaxX".}
proc xPSystemGetSizeMaxY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetSizeMaxY".}
proc xPSystemSetScaleSpeed*(psystem: Handle, minx: float32, miny: float32, maxx: float32, maxy: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetScaleSpeed".}
proc xPSystemGetScaleSpeedMinX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetScaleSpeedMinX".}
proc xPSystemGetScaleSpeedMinY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetScaleSpeedMinY".}
proc xPSystemGetScaleSpeedMaxX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetScaleSpeedMaxX".}
proc xPSystemGetScaleSpeedMaxY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetScaleSpeedMaxY".}
proc xPSystemSetAngles*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetAngles".}
proc xPSystemGetAnglesMinX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetAnglesMinX".}
proc xPSystemGetAnglesMinY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetAnglesMinY".}
proc xPSystemGetAnglesMinZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetAnglesMinZ".}
proc xPSystemGetAnglesMaxX*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetAnglesMaxX".}
proc xPSystemGetAnglesMaxY*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetAnglesMaxY".}
proc xPSystemGetAnglesMaxZ*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetAnglesMaxZ".}
proc xPSystemSetColorMode*(psystem: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetColorMode".}
proc xPSystemGetColorMode*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetColorMode".}
proc xPSystemSetColors*(psystem: Handle, sred: float32, sgreen: float32, sblue: float32, ered: float32, egreen: float32, eblue: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetColors".}
proc xPSystemGetBeginColorRed*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetBeginColorRed".}
proc xPSystemGetBeginColorGreen*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetBeginColorGreen".}
proc xPSystemGetBeginColorBlue*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetBeginColorBlue".}
proc xPSystemGetEndColorRed*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetEndColorRed".}
proc xPSystemGetEndColorGreen*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetEndColorGreen".}
proc xPSystemGetEndColorBlue*(psystem: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetEndColorBlue".}
proc xFreePSystem*(psystem: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreePSystem".}
proc xPSystemSetParticleParenting*(psystem: Handle, mode: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemSetParticleParenting".}
proc xPSystemGetParticleParenting*(psystem: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPSystemGetParticleParenting".}
 
# raypicks commands
proc xLinePick*(x: float32, y: float32, z: float32, dx: float32, dy: float32, dz: float32, distance: float32 = 0.0f): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLinePick".}
proc xEntityPick*(entity: Handle, range: float32 = 0.0f): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityPick".}
proc xCameraPick*(camera: Handle, x: int, y: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraPick".}
proc xPickedNX*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedNX".}
proc xPickedNY*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedNY".}
proc xPickedNZ*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedNZ".}
proc xPickedX*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedX".}
proc xPickedY*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedY".}
proc xPickedZ*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedZ".}
proc xPickedEntity*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedEntity".}
proc xPickedSurface*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedSurface".}
proc xPickedTriangle*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedTriangle".}
proc xPickedTime*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPickedTime".}
 
# shadows commands
proc xSetShadowsBlur*(blurLevel: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetShadowsBlur".}
proc xSetShadowShader*(path: cstring) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetShadowShader".}
proc xInitShadows*(dirSize: int, spotSize: int, pointSize: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xInitShadows".}
proc xSetShadowParams*(splitPlanes: int = 4, splitLambda: float32 = 0.95f, useOrtho: bool = true, lightDist: float32 = 300.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetShadowParams".}
proc xRenderShadows*(mainCamera: Handle, texture: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRenderShadows".}
proc xShadowPriority*(priority: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xShadowPriority".}
proc xCameraDisableShadows*(camera: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraDisableShadows".}
proc xCameraEnableShadows*(camera: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCameraEnableShadows".}
proc xEntityCastShadows*(entity: Handle, light: Handle, state: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityCastShadows".}
proc xEntityReceiveShadows*(entity: Handle, light: Handle, state: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityReceiveShadows".}
proc xEntityIsCaster*(entity: Handle, light: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityIsCaster".}
proc xEntityIsReceiver*(entity: Handle, light: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEntityIsReceiver".}
 
# sounds commands
proc xLoadSound*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadSound".}
proc xLoad3DSound*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoad3DSound".}
proc xFreeSound*(sound: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeSound".}
proc xLoopSound*(sound: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoopSound".}
proc xSoundPitch*(sound: Handle, pitch: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSoundPitch".}
proc xSoundVolume*(sound: Handle, volume: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSoundVolume".}
proc xSoundPan*(sound: Handle, pan: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSoundPan".}
proc xPlaySound*(sound: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPlaySound".}
proc xStopChannel*(channel: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xStopChannel".}
proc xPauseChannel*(channel: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPauseChannel".}
proc xResumeChannel*(channel: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xResumeChannel".}
proc xPlayMusic*(path: cstring): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPlayMusic".}
proc xChannelPitch*(channel: int, pitch: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xChannelPitch".}
proc xChannelVolume*(channel: int, volume: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xChannelVolume".}
proc xChannelPan*(channel: int, pan: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xChannelPan".}
proc xChannelPlaying*(channel: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xChannelPlaying".}
proc xEmitSound*(sound: Handle, entity: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xEmitSound".}
proc xCreateListener*(parent: Handle = NULL, roFactor: float32 = 1.0f, doplerFactor: float32 = 1.0f, distFactor: float32 = 1.0f): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateListener".}
proc xGetListener*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetListener".}
proc xInitalizeSound*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xInitalizeSound".}
 
# sprites commands
proc xCreateSprite*(parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateSprite".}
proc xSpriteViewMode*(sprite: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSpriteViewMode".}
proc xHandleSprite*(sprite: Handle, x: float32, y: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xHandleSprite".}
proc xLoadSprite*(path: cstring, flags: int = 9, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadSprite".}
proc xRotateSprite*(sprite: Handle, angle: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRotateSprite".}
proc xScaleSprite*(sprite: Handle, xScale: float32, yScale: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xScaleSprite".}
 
# surfaces commands
proc xCreateSurface*(entity: Handle, brush: Handle = NULL, dynamic: bool = false): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateSurface".}
proc xGetSurfaceBrush*(surface: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetSurfaceBrush".}
proc xAddVertex*(surface: Handle, x: float32, y: float32, z: float32, u: float32 = 0.0f, v: float32 = 0.0f, w: float32 = 0.0f): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAddVertex".}
proc xAddTriangle*(surface: Handle, v0: int, v1: int, v2: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xAddTriangle".}
proc xSetSurfaceFrustumSphere*(surface: Handle, x: float32, y: float32, z: float32, radii: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetSurfaceFrustumSphere".}
proc xVertexCoords*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexCoords".}
proc xVertexNormal*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexNormal".}
proc xVertexTangent*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexTangent".}
proc xVertexBinormal*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexBinormal".}
proc xVertexColor*(surface: Handle, vertex: int, red: int, green: int, blue: int, alpha: float32 = 1.0f) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexColor".}
proc xVertexTexCoords*(surface: Handle, vertex: int, u: float32, v: float32, w: float32 = 1.0f, textureSet: int = 0) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexTexCoords".}
proc xCountVertices*(surface: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCountVertices".}
proc xVertexX*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexX".}
proc xVertexY*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexY".}
proc xVertexZ*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexZ".}
proc xVertexNX*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexNX".}
proc xVertexNY*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexNY".}
proc xVertexNZ*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexNZ".}
proc xVertexTX*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexTX".}
proc xVertexTY*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexTY".}
proc xVertexTZ*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexTZ".}
proc xVertexBX*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexBX".}
proc xVertexBY*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexBY".}
proc xVertexBZ*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexBZ".}
proc xVertexU*(surface: Handle, vertex: int, textureSet: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexU".}
proc xVertexV*(surface: Handle, vertex: int, textureSet: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexV".}
proc xVertexW*(surface: Handle, vertex: int, textureSet: int = 0): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexW".}
proc xVertexRed*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexRed".}
proc xVertexGreen*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexGreen".}
proc xVertexBlue*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexBlue".}
proc xVertexAlpha*(surface: Handle, vertex: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVertexAlpha".}
proc xTriangleVertex*(surface: Handle, triangle: int, corner: int): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTriangleVertex".}
proc xCountTriangles*(surface: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCountTriangles".}
proc xPaintSurface*(surface: Handle, brush: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPaintSurface".}
proc xClearSurface*(surface: Handle, vertices: bool = true, triangles: bool = true) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearSurface".}
proc xGetSurfaceTexture*(surface: Handle, index: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetSurfaceTexture".}
proc xFreeSurface*(surface: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeSurface".}
proc xSurfacePrimitiveType*(surface: Handle, ptype: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfacePrimitiveType".}
proc xSurfaceTexture*(surface: Handle, texture: Handle, frame: int, index: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceTexture".}
proc xSurfaceColor*(surface: Handle, red: int, green: int, blue: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceColor".}
proc xSurfaceAlpha*(surface: Handle, alpha: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceAlpha".}
proc xSurfaceShininess*(surface: Handle, shininess: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceShininess".}
proc xSurfaceBlend*(surface: Handle, blendMode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceBlend".}
proc xSurfaceFX*(surface: Handle, fxFlags: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceFX".}
proc xSurfaceAlphaRef*(surface: Handle, alphaRef: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceAlphaRef".}
proc xSurfaceAlphaFunc*(surface: Handle, alphaFunc: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSurfaceAlphaFunc".}
 
# sysinfos commands
proc xCPUName*(): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCPUName".}
proc xCPUVendor*(): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCPUVendor".}
proc xCPUFamily*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCPUFamily".}
proc xCPUModel*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCPUModel".}
proc xCPUStepping*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCPUStepping".}
proc xCPUSpeed*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCPUSpeed".}
proc xVideoInfo*(): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVideoInfo".}
proc xVideoAspectRatio*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVideoAspectRatio".}
proc xVideoAspectRatioStr*(): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVideoAspectRatioStr".}
proc xGetTotalPhysMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTotalPhysMem".}
proc xGetAvailPhysMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetAvailPhysMem".}
proc xGetTotalPageMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTotalPageMem".}
proc xGetAvailPageMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetAvailPageMem".}
proc xGetTotalVidMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTotalVidMem".}
proc xGetAvailVidMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetAvailVidMem".}
proc xGetTotalVidLocalMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTotalVidLocalMem".}
proc xGetAvailVidLocalMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetAvailVidLocalMem".}
proc xGetTotalVidNonlocalMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTotalVidNonlocalMem".}
proc xGetAvailVidNonlocalMem*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetAvailVidNonlocalMem".}
proc xGetXors3dVersion*(): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetXors3dVersion".}
proc xGetXors3dMajorVersion*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetXors3dMajorVersion".}
proc xGetXors3dMinorVersion*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetXors3dMinorVersion".}
proc xGetXors3dRevision*(): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetXors3dRevision".}
 
# terrains commands
proc xLoadTerrain*(path: cstring, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadTerrain".}
proc xCreateTerrain*(size: int, parent: Handle = NULL): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateTerrain".}
proc xTerrainShading*(terrain: Handle, state: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainShading".}
proc xTerrainHeight*(terrain: Handle, x: int, y: int): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainHeight".}
proc xTerrainSize*(terrain: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainSize".}
proc xTerrainX*(terrain: Handle, x: float32, y: float32, z: float32): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainX".}
proc xTerrainY*(terrain: Handle, x: float32, y: float32, z: float32): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainY".}
proc xTerrainZ*(terrain: Handle, x: float32, y: float32, z: float32): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainZ".}
proc xModifyTerrain*(terrain: Handle, x: int, y: int, height: float32, realtime: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xModifyTerrain".}
proc xTerrainDetail*(terrain: Handle, detail: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainDetail".}
proc xTerrainSplatting*(terrain: Handle, state: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainSplatting".}
proc xLoadTerrainTexture*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadTerrainTexture".}
proc xFreeTerrainTexture*(texture: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeTerrainTexture".}
proc xTerrainTextureLightmap*(texture: Handle, state: bool) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainTextureLightmap".}
proc xTerrainTexture*(terrain: Handle, texture: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainTexture".}
proc xTerrainViewZone*(terrain: Handle, viewZone: int, texturingZone: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainViewZone".}
proc xTerrainLODs*(lodsCount: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTerrainLODs".}
 
# textures commands
proc xTextureWidth*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureWidth".}
proc xTextureHeight*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureHeight".}
proc xCreateTexture*(width: int, height: int, flags: int = 9, frames: int = 1): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateTexture".}
proc xFreeTexture*(texture: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xFreeTexture".}
proc xSetTextureFilter*(texture: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetTextureFilter".}
proc xTextureBlend*(texture: Handle, blend: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureBlend".}
proc xTextureCoords*(texture: Handle, coords: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureCoords".}
proc xTextureFilter*(matchText: cstring, flags: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureFilter".}
proc xClearTextureFilters*() {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xClearTextureFilters".}
proc xLoadTexture*(path: cstring, flags: int = 9): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadTexture".}
proc xTextureName*(texture: Handle): cstring {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureName".}
proc xPositionTexture*(texture: Handle, x: float32, y: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xPositionTexture".}
proc xScaleTexture*(texture: Handle, x: float32, y: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xScaleTexture".}
proc xRotateTexture*(texture: Handle, angle: float32) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xRotateTexture".}
proc xLoadAnimTexture*(path: cstring, flags: int, width: int, height: int, startFrame: int, frames: int): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xLoadAnimTexture".}
proc xCreateTextureFromData*(pixelsData: Handle, width: int, height: int, flags: int = 9, frames: int = 1): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateTextureFromData".}
proc xGetTextureData*(texture: Handle, frame: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureData".}
proc xGetTextureDataPitch*(texture: Handle, frame: int = 0): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureDataPitch".}
proc xGetTextureSurface*(texture: Handle, frame: int = 0): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureSurface".}
proc xGetTextureFrames*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureFrames".}
proc xSetCubeFace*(texture: Handle, face: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetCubeFace".}
proc xSetCubeMode*(texture: Handle, mode: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetCubeMode".}
proc xGetTextureBlend*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureBlend".}
proc xGetTextureX*(texture: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureX".}
proc xGetTextureY*(texture: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureY".}
proc xGetTextureScaleX*(texture: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureScaleX".}
proc xGetTextureScaleY*(texture: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureScaleY".}
proc xGetTextureAngle*(texture: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureAngle".}
proc xGetTextureCoords*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureCoords".}
proc xGetCubeFace*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetCubeFace".}
proc xGetCubeMode*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetCubeMode".}
proc xGetTextureFlags*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetTextureFlags".}
proc xSetTextureFlags*(texture: Handle, flags: int) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetTextureFlags".}
proc xTextureCounter*(texture: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTextureCounter".}
 
# transforms commands
proc xVectorPitch*(x: float32, y: float32, z: float32): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVectorPitch".}
proc xVectorYaw*(x: float32, y: float32, z: float32): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xVectorYaw".}
proc xDeltaPitch*(entity1: Handle, entity2: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeltaPitch".}
proc xDeltaYaw*(entity1: Handle, entity2: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeltaYaw".}
proc xTFormedX*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTFormedX".}
proc xTFormedY*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTFormedY".}
proc xTFormedZ*(): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTFormedZ".}
proc xTFormPoint*(x: float32, y: float32, z: float32, source: Handle, destination: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTFormPoint".}
proc xTFormVector*(x: float32, y: float32, z: float32, source: Handle, destination: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTFormVector".}
proc xTFormNormal*(x: float32, y: float32, z: float32, source: Handle, destination: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xTFormNormal".}
 
# videos commands
proc xOpenMovie*(path: cstring): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xOpenMovie".}
proc xCloseMovie*(video: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCloseMovie".}
proc xDrawMovie*(video: Handle, x: int = 0, y: int = 0, width: int = -1, height: int = -1) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDrawMovie".}
proc xMovieWidth*(video: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMovieWidth".}
proc xMovieHeight*(video: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMovieHeight".}
proc xMoviePlaying*(video: Handle): int {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMoviePlaying".}
proc xMovieSeek*(video: Handle, time: float32, relative: bool = false) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMovieSeek".}
proc xMovieLength*(video: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMovieLength".}
proc xMovieCurrentTime*(video: Handle): float32 {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMovieCurrentTime".}
proc xMoviePause*(video: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMoviePause".}
proc xMovieResume*(video: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMovieResume".}
proc xMovieTexture*(video: Handle): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xMovieTexture".}
 
# worlds commands
proc xCreateWorld*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xCreateWorld".}
proc xSetActiveWorld*(world: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xSetActiveWorld".}
proc xGetActiveWorld*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetActiveWorld".}
proc xGetDefaultWorld*(): Handle {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xGetDefaultWorld".}
proc xDeleteWorld*(world: Handle) {.stdcall, discardable, dynlib: "Xors3D.dll", importc: "xDeleteWorld".}
 
# Scancodes for keyboard and mouse
const MOUSE_LEFT* = 1
const MOUSE_RIGHT* = 2
const MOUSE_MIDDLE* = 3
const MOUSE4* = 4
const MOUSE5* = 5
const MOUSE6* = 6
const MOUSE7* = 7
const MOUSE8* = 8
 
 
const KEY_ESCAPE* = 1
const KEY_1* = 2
const KEY_2* = 3
const KEY_3* = 4
const KEY_4* = 5
const KEY_5* = 6
const KEY_6* = 7
const KEY_7* = 8
const KEY_8* = 9
const KEY_9* = 10
const KEY_0* = 11
const KEY_MINUS* = 12
const KEY_EQUALS* = 13
const KEY_BACK* = 14
const KEY_TAB* = 15
const KEY_Q* = 16
const KEY_W* = 17
const KEY_E* = 18
const KEY_R* = 19
const KEY_T* = 20
const KEY_Y* = 21
const KEY_U* = 22
const KEY_I* = 23
const KEY_O* = 24
const KEY_P* = 25
const KEY_LBRACKET* = 26
const KEY_RBRACKET* = 27
const KEY_RETURN* = 28
const KEY_ENTER* = KEY_RETURN
const KEY_LCONTROL* = 29
const KEY_RCONTROL* = 157
const KEY_A* = 30
const KEY_S* = 31
const KEY_D* = 32
const KEY_F* = 33
const KEY_G* = 34
const KEY_H* = 35
const KEY_J* = 36
const KEY_K* = 37
const KEY_L* = 38
const KEY_SEMICOLON* = 39
const KEY_APOSTROPHE* = 40
const KEY_GRAVE* = 41
const KEY_LSHIFT* = 42
const KEY_BACKSLASH* = 43
const KEY_Z* = 44
const KEY_X* = 45
const KEY_C* = 46
const KEY_V* = 47
const KEY_B* = 48
const KEY_N* = 49
const KEY_M* = 50
const KEY_COMMA* = 51
const KEY_PERIOD* = 52
const KEY_SLASH* = 53
const KEY_RSHIFT* = 54
const KEY_MULTIPLY* = 55
const KEY_MENU* = 56
const KEY_SPACE* = 57
const KEY_F1* = 59
const KEY_F2* = 60
const KEY_F3* = 61
const KEY_F4* = 62
const KEY_F5* = 63
const KEY_F6* = 64
const KEY_F7* = 65
const KEY_F8* = 66
const KEY_F9* = 67
const KEY_F10* = 68
const KEY_NUMLOCK* = 69
const KEY_SCROLL* = 70
const KEY_NUMPAD7* = 71
const KEY_NUMPAD8* = 72
const KEY_NUMPAD9* = 73
const KEY_SUBTRACT* = 74
const KEY_NUMPAD4* = 75
const KEY_NUMPAD5* = 76
const KEY_NUMPAD6* = 77
const KEY_ADD* = 78
const KEY_NUMPAD1* = 79
const KEY_NUMPAD2* = 80
const KEY_NUMPAD3* = 81
const KEY_NUMPAD0* = 82
const KEY_DECIMAL* = 83
const KEY_TILD* = 86
const KEY_F11* = 87
const KEY_F12* = 88
const KEY_NUMPADENTER* = 156
const KEY_RMENU* = 221
const KEY_PAUSE* = 197
const KEY_HOME* = 199
const KEY_UP* = 200
const KEY_PRIOR* = 201
const KEY_LEFT* = 203
const KEY_RIGHT* = 205
const KEY_END* = 207
const KEY_DOWN* = 208
const KEY_NEXT* = 209
const KEY_INSERT* = 210
const KEY_DELETE* = 211
const KEY_LWIN* = 219
const KEY_RWIN* = 220
const KEY_BACKSPACE* = KEY_BACK
const KEY_NUMPADSTAR* = KEY_MULTIPLY
const KEY_RALT* = 184
const KEY_CAPSLOCK* = 58
const KEY_NUMPADMINUS* = KEY_SUBTRACT
const KEY_NUMPADPLUS* = KEY_ADD
const KEY_NUMPADPERIOD* = KEY_DECIMAL
const KEY_DIVIDE* = 181
const KEY_NUMPADSLASH* = KEY_DIVIDE
const KEY_LALT* = 56
const KEY_UPARROW* = KEY_UP
const KEY_PGUP* = KEY_PRIOR
const KEY_LEFTARROW* = KEY_LEFT
const KEY_RIGHTARROW* = KEY_RIGHT
const KEY_DOWNARROW* = KEY_DOWN
const KEY_PGDN* = KEY_NEXT
 
 