# *=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*
# Xors3D's main engine declarations.
# Converted in 2020 by Guevara-chan.
# *=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

# standard headers
# Delaration & call macros
{.pragma: X3DDECL, stdcall, discardable, dynlib: "Xors3D.dll".}
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
proc xCreateLine3D*(fromX: float32, fromY: float32, fromZ: float32, toX: float32, toY: float32, toZ: float32, red: int = 255, green: int = 255, blue: int = 255, alpha: int = 255, useZBuffer: bool = true): Handle {.X3DDECL, importc: "xCreateLine3D".}
proc xLine3DOrigin*(line3d: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xLine3DOrigin".}
proc xLine3DAddNode*(line3d: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xLine3DAddNode".}
proc xLine3DColor*(line3d: Handle, red: int, green: int, blue: int, alpha: int) {.X3DDECL, importc: "xLine3DColor".}
proc xLine3DUseZBuffer*(line3d: Handle, state: bool) {.X3DDECL, importc: "xLine3DUseZBuffer".}
proc xLine3DOriginX*(line3d: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xLine3DOriginX".}
proc xLine3DOriginY*(line3d: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xLine3DOriginY".}
proc xLine3DOriginZ*(line3d: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xLine3DOriginZ".}
proc xLine3DNodesCount*(line3d: Handle): int {.X3DDECL, importc: "xLine3DNodesCount".}
proc xLine3DNodePosition*(line3d: Handle, index: int, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xLine3DNodePosition".}
proc xLine3DNodeX*(line3d: Handle, index: int, isGlobal: bool = false): float32 {.X3DDECL, importc: "xLine3DNodeX".}
proc xLine3DNodeY*(line3d: Handle, index: int, isGlobal: bool = false): float32 {.X3DDECL, importc: "xLine3DNodeY".}
proc xLine3DNodeZ*(line3d: Handle, index: int, isGlobal: bool = false): float32 {.X3DDECL, importc: "xLine3DNodeZ".}
proc xLine3DRed*(line3d: Handle): int {.X3DDECL, importc: "xLine3DRed".}
proc xLine3DGreen*(line3d: Handle): int {.X3DDECL, importc: "xLine3DGreen".}
proc xLine3DBlue*(line3d: Handle): int {.X3DDECL, importc: "xLine3DBlue".}
proc xLine3DAlpha*(line3d: Handle): int {.X3DDECL, importc: "xLine3DAlpha".}
proc xGetLine3DUseZBuffer*(line3d: Handle): int {.X3DDECL, importc: "xGetLine3DUseZBuffer".}
proc xDeleteLine3DNode*(line3d: Handle, index: int) {.X3DDECL, importc: "xDeleteLine3DNode".}
proc xClearLine3D*(line3d: Handle) {.X3DDECL, importc: "xClearLine3D".}
# brushes commands
proc xLoadBrush*(path: cstring, flags: int = 9, xScale: float32 = 1.0f, yScale: float32 = 1.0f): Handle {.X3DDECL, importc: "xLoadBrush".}
proc xCreateBrush*(red: float32 = 255.0f, green: float32 = 255.0f, blue: float32 = 255.0f): Handle {.X3DDECL, importc: "xCreateBrush".}
proc xFreeBrush*(brush: Handle) {.X3DDECL, importc: "xFreeBrush".}
proc xGetBrushTexture*(brush: Handle, index: int = 0): Handle {.X3DDECL, importc: "xGetBrushTexture".}
proc xBrushColor*(brush: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xBrushColor".}
proc xBrushAlpha*(brush: Handle, alpha: float32) {.X3DDECL, importc: "xBrushAlpha".}
proc xBrushShininess*(brush: Handle, shininess: float32) {.X3DDECL, importc: "xBrushShininess".}
proc xBrushBlend*(brush: Handle, blend: int) {.X3DDECL, importc: "xBrushBlend".}
proc xBrushFX*(brush: Handle, FX: int) {.X3DDECL, importc: "xBrushFX".}
proc xBrushTexture*(brush: Handle, texture: Handle, frame: int = 0, index: int = 0) {.X3DDECL, importc: "xBrushTexture".}
proc xGetBrushName*(brush: Handle): cstring {.X3DDECL, importc: "xGetBrushName".}
proc xBrushName*(brush: Handle, name: cstring) {.X3DDECL, importc: "xBrushName".}
proc xGetBrushAlpha*(brush: Handle): float32 {.X3DDECL, importc: "xGetBrushAlpha".}
proc xGetBrushBlend*(brush: Handle): int {.X3DDECL, importc: "xGetBrushBlend".}
proc xGetBrushRed*(brush: Handle): int {.X3DDECL, importc: "xGetBrushRed".}
proc xGetBrushGreen*(brush: Handle): int {.X3DDECL, importc: "xGetBrushGreen".}
proc xGetBrushBlue*(brush: Handle): int {.X3DDECL, importc: "xGetBrushBlue".}
proc xGetBrushFX*(brush: Handle): int {.X3DDECL, importc: "xGetBrushFX".}
proc xGetBrushShininess*(brush: Handle): float32 {.X3DDECL, importc: "xGetBrushShininess".}
# cameras commands
proc xCameraFogMode*(camera: Handle, mode: int) {.X3DDECL, importc: "xCameraFogMode".}
proc xCameraFogColor*(camera: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xCameraFogColor".}
proc xCameraFogRange*(camera: Handle, nearRange: float32, farRange: float32) {.X3DDECL, importc: "xCameraFogRange".}
proc xCameraClsColor*(camera: Handle, red: int, green: int, blue: int, alpha: int = 255) {.X3DDECL, importc: "xCameraClsColor".}
proc xCameraProjMode*(camera: Handle, mode: int) {.X3DDECL, importc: "xCameraProjMode".}
proc xCameraClsMode*(camera: Handle, clearColor: int, clearZBuffer: int) {.X3DDECL, importc: "xCameraClsMode".}
proc xSphereInFrustum*(camera: Handle, x: float32, y: float32, z: float32, radii: float32): int {.X3DDECL, importc: "xSphereInFrustum".}
proc xCameraClipPlane*(camera: Handle, index: int, enabled: bool, a: float32, b: float32, c: float32, d: float32) {.X3DDECL, importc: "xCameraClipPlane".}
proc xCameraRange*(camera: Handle, nearRange: float32, farRange: float32) {.X3DDECL, importc: "xCameraRange".}
proc xCameraViewport*(camera: Handle, x: int, y: int, width: int, height: int) {.X3DDECL, importc: "xCameraViewport".}
proc xCameraCropViewport*(camera: Handle, x: int, y: int, width: int, height: int) {.X3DDECL, importc: "xCameraCropViewport".}
proc xCreateCamera*(parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateCamera".}
proc xCameraProject*(camera: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xCameraProject".}
proc xCameraProject2D*(camera: Handle, x: int, y: int, zDistance: float32) {.X3DDECL, importc: "xCameraProject2D".}
proc xProjectedX*(): float32 {.X3DDECL, importc: "xProjectedX".}
proc xProjectedY*(): float32 {.X3DDECL, importc: "xProjectedY".}
proc xProjectedZ*(): float32 {.X3DDECL, importc: "xProjectedZ".}
proc xGetViewMatrix*(camera: Handle): Handle {.X3DDECL, importc: "xGetViewMatrix".}
proc xGetProjectionMatrix*(camera: Handle): Handle {.X3DDECL, importc: "xGetProjectionMatrix".}
proc xCameraZoom*(camera: Handle, zoom: float32) {.X3DDECL, importc: "xCameraZoom".}
proc xGetViewProjMatrix*(camera: Handle): Handle {.X3DDECL, importc: "xGetViewProjMatrix".}
# collisions commands
proc xCollisions*(srcType: int, destType: int, collideMethod: int, response: int) {.X3DDECL, importc: "xCollisions".}
proc xClearCollisions*() {.X3DDECL, importc: "xClearCollisions".}
proc xResetEntity*(entity: Handle) {.X3DDECL, importc: "xResetEntity".}
proc xEntityRadius*(entity: Handle, xRadius: float32, yRadius: float32 = 0.0f) {.X3DDECL, importc: "xEntityRadius".}
proc xEntityBox*(entity: Handle, x: float32, y: float32, z: float32, width: float32, height: float32, depth: float32) {.X3DDECL, importc: "xEntityBox".}
proc xEntityType*(entity: Handle, typeID: int, recurse: bool = false) {.X3DDECL, importc: "xEntityType".}
proc xEntityCollided*(entity: Handle, typeID: int): Handle {.X3DDECL, importc: "xEntityCollided".}
proc xCountCollisions*(entity: Handle): int {.X3DDECL, importc: "xCountCollisions".}
proc xCollisionX*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xCollisionX".}
proc xCollisionY*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xCollisionY".}
proc xCollisionZ*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xCollisionZ".}
proc xCollisionNX*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xCollisionNX".}
proc xCollisionNY*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xCollisionNY".}
proc xCollisionNZ*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xCollisionNZ".}
proc xCollisionTime*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xCollisionTime".}
proc xCollisionEntity*(entity: Handle, index: int): Handle {.X3DDECL, importc: "xCollisionEntity".}
proc xCollisionSurface*(entity: Handle, index: int): Handle {.X3DDECL, importc: "xCollisionSurface".}
proc xCollisionTriangle*(entity: Handle, index: int): int {.X3DDECL, importc: "xCollisionTriangle".}
proc xGetEntityType*(entity: Handle): int {.X3DDECL, importc: "xGetEntityType".}
# constants commands
proc xRenderPostEffect*(poly: Handle) {.X3DDECL, importc: "xRenderPostEffect".}
proc xCreatePostEffectPoly*(camera: Handle, mode: int): Handle {.X3DDECL, importc: "xCreatePostEffectPoly".}
proc xGetFunctionAddress*(name: cstring): Handle {.X3DDECL, importc: "xGetFunctionAddress".}
# effects commands
proc xLoadFXFile*(path: cstring): Handle {.X3DDECL, importc: "xLoadFXFile".}
proc xFreeEffect*(effect: Handle) {.X3DDECL, importc: "xFreeEffect".}
proc xSetEntityEffect*(entity: Handle, effect: Handle, index: int = -1) {.X3DDECL, importc: "xSetEntityEffect".}
proc xSetSurfaceEffect*(surface: Handle, effect: Handle, index: int = -1) {.X3DDECL, importc: "xSetSurfaceEffect".}
proc xSetBonesArrayName*(entity: Handle, arrayName: cstring, layer: int = -1) {.X3DDECL, importc: "xSetBonesArrayName".}
proc xSurfaceBonesArrayName*(surface: Handle, arrayName: cstring, layer: int = -1) {.X3DDECL, importc: "xSurfaceBonesArrayName".}
proc xSetEffectInt*(entity: Handle, name: cstring, value: int, layer: int = -1) {.X3DDECL, importc: "xSetEffectInt".}
proc xSurfaceEffectInt*(surface: Handle, name: cstring, value: int, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectInt".}
proc xSetEffectFloat*(entity: Handle, name: cstring, value: float32, layer: int = -1) {.X3DDECL, importc: "xSetEffectFloat".}
proc xSurfaceEffectFloat*(surface: Handle, name: cstring, value: float32, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectFloat".}
proc xSetEffectBool*(entity: Handle, name: cstring, value: bool, layer: int = -1) {.X3DDECL, importc: "xSetEffectBool".}
proc xSurfaceEffectBool*(surface: Handle, name: cstring, value: bool, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectBool".}
proc xSetEffectVector*(entity: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 0.0f, layer: int = -1) {.X3DDECL, importc: "xSetEffectVector".}
proc xSurfaceEffectVector*(surface: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 0.0f, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectVector".}
proc xSetEffectVectorArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSetEffectVectorArray".}
proc xSurfaceEffectVectorArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectVectorArray".}
proc xSurfaceEffectMatrixArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectMatrixArray".}
proc xSurfaceEffectFloatArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectFloatArray".}
proc xSurfaceEffectIntArray*(surface: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectIntArray".}
proc xSetEffectMatrixArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSetEffectMatrixArray".}
proc xSetEffectFloatArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSetEffectFloatArray".}
proc xSetEffectIntArray*(entity: Handle, name: cstring, value: Handle, count: int, layer: int = -1) {.X3DDECL, importc: "xSetEffectIntArray".}
proc xCreateBufferVectors*(count: int): Handle {.X3DDECL, importc: "xCreateBufferVectors".}
proc xBufferVectorsSetElement*(buffer: Handle, number: int, x: float32, y: float32, z: float32, w: float32) {.X3DDECL, importc: "xBufferVectorsSetElement".}
proc xCreateBufferMatrix*(count: int): Handle {.X3DDECL, importc: "xCreateBufferMatrix".}
proc xBufferMatrixSetElement*(buffer: Handle, number: int, matrix: Handle) {.X3DDECL, importc: "xBufferMatrixSetElement".}
proc xBufferMatrixGetElement*(buffer: Handle, number: int): Handle {.X3DDECL, importc: "xBufferMatrixGetElement".}
proc xCreateBufferFloats*(count: int): Handle {.X3DDECL, importc: "xCreateBufferFloats".}
proc xBufferFloatsSetElement*(buffer: Handle, number: int, value: float32) {.X3DDECL, importc: "xBufferFloatsSetElement".}
proc xBufferFloatsGetElement*(buffer: Handle, number: int): float32 {.X3DDECL, importc: "xBufferFloatsGetElement".}
proc xBufferDelete*(buffer: Handle) {.X3DDECL, importc: "xBufferDelete".}
proc xSetEffectMatrixWithElements*(entity: Handle, name: cstring, m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32, layer: int = -1) {.X3DDECL, importc: "xSetEffectMatrixWithElements".}
proc xSetEffectMatrix*(entity: Handle, name: cstring, matrix: Handle, layer: int = -1) {.X3DDECL, importc: "xSetEffectMatrix".}
proc xSurfaceEffectMatrix*(surface: Handle, name: cstring, matrix: Handle, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectMatrix".}
proc xSurfaceEffectMatrixWithElements*(surface: Handle, name: cstring, m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectMatrixWithElements".}
proc xSetEffectEntityTexture*(entity: Handle, name: cstring, index: int = 0, layer: int = -1) {.X3DDECL, importc: "xSetEffectEntityTexture".}
proc xSetEffectTexture*(entity: Handle, name: cstring, texture: Handle, frame: int = 0, layer: int = -1, isRecursive: int = 1) {.X3DDECL, importc: "xSetEffectTexture".}
proc xSurfaceEffectTexture*(surface: Handle, name: cstring, texture: Handle, frame: int = 0, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectTexture".}
proc xSurfaceEffectMatrixSemantic*(surface: Handle, name: cstring, value: int, layer: int = -1) {.X3DDECL, importc: "xSurfaceEffectMatrixSemantic".}
proc xSetEffectMatrixSemantic*(entity: Handle, name: cstring, value: int, layer: int = -1) {.X3DDECL, importc: "xSetEffectMatrixSemantic".}
proc xDeleteSurfaceConstant*(surface: Handle, name: cstring, layer: int = -1) {.X3DDECL, importc: "xDeleteSurfaceConstant".}
proc xDeleteEffectConstant*(entity: Handle, name: cstring, layer: int = -1) {.X3DDECL, importc: "xDeleteEffectConstant".}
proc xClearSurfaceConstants*(surface: Handle, layer: int = -1) {.X3DDECL, importc: "xClearSurfaceConstants".}
proc xClearEffectConstants*(entity: Handle, layer: int = -1) {.X3DDECL, importc: "xClearEffectConstants".}
proc xSetEffectTechnique*(entity: Handle, name: cstring, layer: int = -1) {.X3DDECL, importc: "xSetEffectTechnique".}
proc xSurfaceTechnique*(surface: Handle, name: cstring, layer: int = -1) {.X3DDECL, importc: "xSurfaceTechnique".}
proc xValidateEffectTechnique*(effect: Handle, name: cstring): int {.X3DDECL, importc: "xValidateEffectTechnique".}
proc xSetEntityShaderLayer*(entity: Handle, layer: int) {.X3DDECL, importc: "xSetEntityShaderLayer".}
proc xGetEntityShaderLayer*(entity: Handle): int {.X3DDECL, importc: "xGetEntityShaderLayer".}
proc xSetSurfaceShaderLayer*(surface: Handle, layer: int) {.X3DDECL, importc: "xSetSurfaceShaderLayer".}
proc xGetSurfaceShaderLayer*(surface: Handle): int {.X3DDECL, importc: "xGetSurfaceShaderLayer".}
proc xSetFXInt*(effect: Handle, name: cstring, value: int) {.X3DDECL, importc: "xSetFXInt".}
proc xSetFXFloat*(effect: Handle, name: cstring, value: float32) {.X3DDECL, importc: "xSetFXFloat".}
proc xSetFXBool*(effect: Handle, name: cstring, value: bool) {.X3DDECL, importc: "xSetFXBool".}
proc xSetFXVector*(effect: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 0.0f) {.X3DDECL, importc: "xSetFXVector".}
proc xSetFXVectorArray*(effect: Handle, name: cstring, value: Handle, count: int) {.X3DDECL, importc: "xSetFXVectorArray".}
proc xSetFXMatrixArray*(effect: Handle, name: cstring, value: Handle, count: int) {.X3DDECL, importc: "xSetFXMatrixArray".}
proc xSetFXFloatArray*(effect: Handle, name: cstring, value: Handle, count: int) {.X3DDECL, importc: "xSetFXFloatArray".}
proc xSetFXIntArray*(effect: Handle, name: cstring, value: Handle, count: int) {.X3DDECL, importc: "xSetFXIntArray".}
proc xSetFXEntityMatrix*(effect: Handle, name: cstring, matrix: Handle) {.X3DDECL, importc: "xSetFXEntityMatrix".}
proc xSetFXTexture*(effect: Handle, name: cstring, texture: Handle, frame: int = 0) {.X3DDECL, importc: "xSetFXTexture".}
proc xSetFXMatrixSemantic*(effect: Handle, name: cstring, value: int) {.X3DDECL, importc: "xSetFXMatrixSemantic".}
proc xDeleteFXConstant*(effect: Handle, name: cstring) {.X3DDECL, importc: "xDeleteFXConstant".}
proc xClearFXConstants*(effect: Handle) {.X3DDECL, importc: "xClearFXConstants".}
proc xSetFXTechnique*(effect: Handle, name: cstring) {.X3DDECL, importc: "xSetFXTechnique".}
# emitters commands
proc xCreateEmitter*(psystem: Handle, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateEmitter".}
proc xEmitterEnable*(emitter: Handle, state: bool) {.X3DDECL, importc: "xEmitterEnable".}
proc xEmitterEnabled*(emitter: Handle): int {.X3DDECL, importc: "xEmitterEnabled".}
proc xEmitterGetPSystem*(emitter: Handle): Handle {.X3DDECL, importc: "xEmitterGetPSystem".}
proc xEmitterAddParticle*(emitter: Handle): Handle {.X3DDECL, importc: "xEmitterAddParticle".}
proc xEmitterFreeParticle*(emitter: Handle, particle: Handle) {.X3DDECL, importc: "xEmitterFreeParticle".}
proc xEmitterValidateParticle*(emitter: Handle, particle: Handle): int {.X3DDECL, importc: "xEmitterValidateParticle".}
proc xEmitterCountParticles*(emitter: Handle): int {.X3DDECL, importc: "xEmitterCountParticles".}
proc xEmitterGetParticle*(emitter: Handle, index: int): Handle {.X3DDECL, importc: "xEmitterGetParticle".}
proc xEmitterAlive*(emitter: Handle): int {.X3DDECL, importc: "xEmitterAlive".}
# entity_animation commands
proc xExtractAnimSeq*(entity: Handle, firstFrame: int, lastFrame: int, sequence: int = 0): int {.X3DDECL, importc: "xExtractAnimSeq".}
proc xLoadAnimSeq*(entity: Handle, path: cstring): int {.X3DDECL, importc: "xLoadAnimSeq".}
proc xSetAnimSpeed*(entity: Handle, speed: float32, rootBone: cstring = "") {.X3DDECL, importc: "xSetAnimSpeed".}
proc xAnimSpeed*(entity: Handle, rootBone: cstring = ""): float32 {.X3DDECL, importc: "xAnimSpeed".}
proc xAnimating*(entity: Handle, rootBone: cstring = ""): int {.X3DDECL, importc: "xAnimating".}
proc xAnimTime*(entity: Handle, rootBone: cstring = ""): float32 {.X3DDECL, importc: "xAnimTime".}
proc xAnimate*(entity: Handle, mode: int = 1, speed: float32 = 1.0f, sequence: int = 0, translate: float32 = 0.0f, rootBone: cstring = "") {.X3DDECL, importc: "xAnimate".}
proc xAnimSeq*(entity: Handle, rootBone: cstring = ""): int {.X3DDECL, importc: "xAnimSeq".}
proc xAnimLength*(entity: Handle, rootBone: cstring = ""): float32 {.X3DDECL, importc: "xAnimLength".}
proc xSetAnimTime*(entity: Handle, time: float32, sequence: int, rootBone: cstring = "") {.X3DDECL, importc: "xSetAnimTime".}
proc xSetAnimFrame*(entity: Handle, frame: float32, sequence: int, rootBone: cstring = "") {.X3DDECL, importc: "xSetAnimFrame".}
# entity_control commands
proc xEntityAutoFade*(entity: Handle, nearRange: float32, farRange: float32) {.X3DDECL, importc: "xEntityAutoFade".}
proc xEntityOrder*(entity: Handle, order: int) {.X3DDECL, importc: "xEntityOrder".}
proc xFreeEntity*(entity: Handle) {.X3DDECL, importc: "xFreeEntity".}
proc xCopyEntity*(entity: Handle, parent: Handle = NULL, cloneBuffers: int = 0): Handle {.X3DDECL, importc: "xCopyEntity".}
proc xPaintEntity*(entity: Handle, brush: Handle) {.X3DDECL, importc: "xPaintEntity".}
proc xEntityShininess*(entity: Handle, shininess: float32) {.X3DDECL, importc: "xEntityShininess".}
proc xEntityPickMode*(entity: Handle, mode: int, obscurer: bool = true, recursive: bool = true) {.X3DDECL, importc: "xEntityPickMode".}
proc xEntityTexture*(entity: Handle, texture: Handle, frame: int = 0, index: int = 0, isRecursive: int = 1) {.X3DDECL, importc: "xEntityTexture".}
proc xEntityFX*(entity: Handle, fx: int) {.X3DDECL, importc: "xEntityFX".}
proc xGetParent*(entity: Handle): Handle {.X3DDECL, importc: "xGetParent".}
proc xSetFrustumSphere*(entity: Handle, x: float32, y: float32, z: float32, radii: float32) {.X3DDECL, importc: "xSetFrustumSphere".}
proc xCalculateFrustumVolume*(entity: Handle) {.X3DDECL, importc: "xCalculateFrustumVolume".}
proc xEntityParent*(entity: Handle, parent: Handle = NULL, isGlobal: bool = true) {.X3DDECL, importc: "xEntityParent".}
proc xShowEntity*(entity: Handle) {.X3DDECL, importc: "xShowEntity".}
proc xHideEntity*(entity: Handle) {.X3DDECL, importc: "xHideEntity".}
proc xNameEntity*(entity: Handle, name: cstring) {.X3DDECL, importc: "xNameEntity".}
proc xSetEntityQuaternion*(entity: Handle, quaternion: Handle) {.X3DDECL, importc: "xSetEntityQuaternion".}
proc xSetEntityMatrix*(entity: Handle, matrix: Handle) {.X3DDECL, importc: "xSetEntityMatrix".}
proc xEntityAlpha*(entity: Handle, alpha: float32) {.X3DDECL, importc: "xEntityAlpha".}
proc xEntityColor*(entity: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xEntityColor".}
proc xEntitySpecularColor*(entity: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xEntitySpecularColor".}
proc xEntityAmbientColor*(entity: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xEntityAmbientColor".}
proc xEntityEmissiveColor*(entity: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xEntityEmissiveColor".}
proc xEntityBlend*(entity: Handle, mode: int) {.X3DDECL, importc: "xEntityBlend".}
proc xEntityAlphaRef*(entity: Handle, value: int) {.X3DDECL, importc: "xEntityAlphaRef".}
proc xEntityAlphaFunc*(entity: Handle, value: int) {.X3DDECL, importc: "xEntityAlphaFunc".}
proc xCreateInstance*(entity: Handle, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateInstance".}
proc xFreezeInstances*(entity: Handle, enable: bool = true) {.X3DDECL, importc: "xFreezeInstances".}
proc xInstancingAvaliable*(): int {.X3DDECL, importc: "xInstancingAvaliable".}
proc xGetEntityWorld*(entity: Handle): Handle {.X3DDECL, importc: "xGetEntityWorld".}
proc xSetEntityWorld*(entity: Handle, world: Handle) {.X3DDECL, importc: "xSetEntityWorld".}
# entity_movement commands
proc xScaleEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xScaleEntity".}
proc xPositionEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xPositionEntity".}
proc xMoveEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xMoveEntity".}
proc xTranslateEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xTranslateEntity".}
proc xRotateEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xRotateEntity".}
proc xTurnEntity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xTurnEntity".}
proc xPointEntity*(entity1: Handle, entity2: Handle, roll: float32 = 0.0f) {.X3DDECL, importc: "xPointEntity".}
proc xAlignToVector*(entity: Handle, x: float32, y: float32, z: float32, axis: int, factor: float32 = 1.0f) {.X3DDECL, importc: "xAlignToVector".}
# entity_state commands
proc xEntityDistance*(entity1: Handle, entity2: Handle): float32 {.X3DDECL, importc: "xEntityDistance".}
proc xGetMatElement*(entity: Handle, row: int, col: int): float32 {.X3DDECL, importc: "xGetMatElement".}
proc xEntityClass*(entity: Handle): cstring {.X3DDECL, importc: "xEntityClass".}
proc xGetEntityBrush*(entity: Handle): Handle {.X3DDECL, importc: "xGetEntityBrush".}
proc xEntityX*(entity: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xEntityX".}
proc xEntityY*(entity: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xEntityY".}
proc xEntityZ*(entity: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xEntityZ".}
proc xEntityVisible*(entity: Handle, destination: Handle): int {.X3DDECL, importc: "xEntityVisible".}
proc xEntityScaleX*(entity: Handle): float32 {.X3DDECL, importc: "xEntityScaleX".}
proc xEntityScaleY*(entity: Handle): float32 {.X3DDECL, importc: "xEntityScaleY".}
proc xEntityScaleZ*(entity: Handle): float32 {.X3DDECL, importc: "xEntityScaleZ".}
proc xEntityRoll*(entity: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xEntityRoll".}
proc xEntityYaw*(entity: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xEntityYaw".}
proc xEntityPitch*(entity: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xEntityPitch".}
proc xEntityName*(entity: Handle): cstring {.X3DDECL, importc: "xEntityName".}
proc xCountChildren*(entity: Handle): int {.X3DDECL, importc: "xCountChildren".}
proc xGetChild*(entity: Handle, index: int): Handle {.X3DDECL, importc: "xGetChild".}
proc xEntityInView*(entity: Handle, camera: Handle): int {.X3DDECL, importc: "xEntityInView".}
proc xFindChild*(entity: Handle, name: cstring): Handle {.X3DDECL, importc: "xFindChild".}
proc xGetEntityMatrix*(entity: Handle): Handle {.X3DDECL, importc: "xGetEntityMatrix".}
proc xGetEntityAlpha*(entity: Handle): float32 {.X3DDECL, importc: "xGetEntityAlpha".}
proc xGetAlphaRef*(entity: Handle): int {.X3DDECL, importc: "xGetAlphaRef".}
proc xGetAlphaFunc*(entity: Handle): int {.X3DDECL, importc: "xGetAlphaFunc".}
proc xEntityRed*(entity: Handle): int {.X3DDECL, importc: "xEntityRed".}
proc xEntityGreen*(entity: Handle): int {.X3DDECL, importc: "xEntityGreen".}
proc xEntityBlue*(entity: Handle): int {.X3DDECL, importc: "xEntityBlue".}
proc xGetEntityShininess*(entity: Handle): float32 {.X3DDECL, importc: "xGetEntityShininess".}
proc xGetEntityBlend*(entity: Handle): int {.X3DDECL, importc: "xGetEntityBlend".}
proc xGetEntityFX*(entity: Handle): int {.X3DDECL, importc: "xGetEntityFX".}
proc xEntityHidden*(entity: Handle): int {.X3DDECL, importc: "xEntityHidden".}
proc xEntitiesBBIntersect*(entity1: Handle, entity2: Handle): int {.X3DDECL, importc: "xEntitiesBBIntersect".}
# filesystems commands
proc xMountPackFile*(path: cstring, mountpoint: cstring = "", password: cstring = ""): Handle {.X3DDECL, importc: "xMountPackFile".}
proc xUnmountPackFile*(packfile: Handle) {.X3DDECL, importc: "xUnmountPackFile".}
proc xOpenFile*(path: cstring): Handle {.X3DDECL, importc: "xOpenFile".}
proc xReadFile*(path: cstring): Handle {.X3DDECL, importc: "xReadFile".}
proc xWriteFile*(path: cstring): Handle {.X3DDECL, importc: "xWriteFile".}
proc xCloseFile*(file: Handle) {.X3DDECL, importc: "xCloseFile".}
proc xFilePos*(file: Handle): int {.X3DDECL, importc: "xFilePos".}
proc xSeekFile*(file: Handle, offset: int) {.X3DDECL, importc: "xSeekFile".}
proc xFileType*(path: cstring): int {.X3DDECL, importc: "xFileType".}
proc xFileSize*(path: cstring): int {.X3DDECL, importc: "xFileSize".}
proc xFileCreationTime*(path: cstring): int {.X3DDECL, importc: "xFileCreationTime".}
proc xFileCreationTimeStr*(path: cstring): cstring {.X3DDECL, importc: "xFileCreationTimeStr".}
proc xFileModificationTime*(path: cstring): int {.X3DDECL, importc: "xFileModificationTime".}
proc xFileModificationTimeStr*(path: cstring): cstring {.X3DDECL, importc: "xFileModificationTimeStr".}
proc xReadDir*(path: cstring): int {.X3DDECL, importc: "xReadDir".}
proc xCloseDir*(handle: int) {.X3DDECL, importc: "xCloseDir".}
proc xNextFile*(handle: int): cstring {.X3DDECL, importc: "xNextFile".}
proc xCurrentDir*(): cstring {.X3DDECL, importc: "xCurrentDir".}
proc xChangeDir*(path: cstring) {.X3DDECL, importc: "xChangeDir".}
proc xCreateDir*(path: cstring): int {.X3DDECL, importc: "xCreateDir".}
proc xDeleteDir*(path: cstring): int {.X3DDECL, importc: "xDeleteDir".}
proc xCopyFile*(pathSrc: cstring, pathDest: cstring): int {.X3DDECL, importc: "xCopyFile".}
proc xDeleteFile*(path: cstring): int {.X3DDECL, importc: "xDeleteFile".}
proc xEof*(file: Handle): int {.X3DDECL, importc: "xEof".}
proc xReadByte*(file: Handle): int {.X3DDECL, importc: "xReadByte".}
proc xReadShort*(file: Handle): int {.X3DDECL, importc: "xReadShort".}
proc xReadInt*(file: Handle): int {.X3DDECL, importc: "xReadInt".}
proc xReadFloat*(file: Handle): float32 {.X3DDECL, importc: "xReadFloat".}
proc xReadString*(file: Handle): cstring {.X3DDECL, importc: "xReadString".}
proc xReadLine*(file: Handle, ls_flag: int = 0): cstring {.X3DDECL, importc: "xReadLine".}
proc xWriteByte*(file: Handle, value: int) {.X3DDECL, importc: "xWriteByte".}
proc xWriteShort*(file: Handle, value: int) {.X3DDECL, importc: "xWriteShort".}
proc xWriteInt*(file: Handle, value: int) {.X3DDECL, importc: "xWriteInt".}
proc xWriteFloat*(file: Handle, value: float32) {.X3DDECL, importc: "xWriteFloat".}
proc xWriteString*(file: Handle, value: cstring) {.X3DDECL, importc: "xWriteString".}
proc xWriteLine*(file: Handle, value: cstring, ls_flag: int = 0) {.X3DDECL, importc: "xWriteLine".}
# fonts commands
proc xLoadFont*(name: cstring, height: int, bold: bool = false, italic: bool = false, underline: bool = false, fontface: cstring = ""): Handle {.X3DDECL, importc: "xLoadFont".}
proc xText*(x: float32, y: float32, textString: cstring, centerx: bool = false, centery: bool = false) {.X3DDECL, importc: "xText".}
proc xSetFont*(font: Handle) {.X3DDECL, importc: "xSetFont".}
proc xFreeFont*(font: Handle) {.X3DDECL, importc: "xFreeFont".}
proc xFontWidth*(): int {.X3DDECL, importc: "xFontWidth".}
proc xFontHeight*(): int {.X3DDECL, importc: "xFontHeight".}
proc xStringWidth*(textString: cstring): int {.X3DDECL, importc: "xStringWidth".}
proc xStringHeight*(textString: cstring): int {.X3DDECL, importc: "xStringHeight".}
# graphics commands
proc xWinMessage*(message: cstring): int {.X3DDECL, importc: "xWinMessage".}
proc xGetMaxPixelShaderVersion*(): int {.X3DDECL, importc: "xGetMaxPixelShaderVersion".}
proc xLine*(x1: int, y1: int, x2: int, y2: int) {.X3DDECL, importc: "xLine".}
proc xRect*(x: int, y: int, width: int, height: int, solid: bool = false) {.X3DDECL, importc: "xRect".}
proc xRectsOverlap*(x1: int, y1: int, width1: int, height1: int, x2: int, y2: int, width2: int, height2: int): int {.X3DDECL, importc: "xRectsOverlap".}
proc xViewport*(x: int, y: int, width: int, height: int) {.X3DDECL, importc: "xViewport".}
proc xOval*(x: int, y: int, width: int, height: int, solid: bool = false) {.X3DDECL, importc: "xOval".}
proc xOrigin*(x: int, y: int) {.X3DDECL, importc: "xOrigin".}
proc xGetMaxVertexShaderVersion*(): int {.X3DDECL, importc: "xGetMaxVertexShaderVersion".}
proc xGetMaxAntiAlias*(): int {.X3DDECL, importc: "xGetMaxAntiAlias".}
proc xGetMaxTextureFiltering*(): int {.X3DDECL, importc: "xGetMaxTextureFiltering".}
proc xSetAntiAliasType*(typeID: int) {.X3DDECL, importc: "xSetAntiAliasType".}
proc xAppTitle*(title: cstring) {.X3DDECL, importc: "xAppTitle".}
proc xSetWND*(window: Handle) {.X3DDECL, importc: "xSetWND".}
proc xSetRenderWindow*(window: Handle) {.X3DDECL, importc: "xSetRenderWindow".}
proc xSetTopWindow*(window: Handle) {.X3DDECL, importc: "xSetTopWindow".}
proc xDestroyRenderWindow*() {.X3DDECL, importc: "xDestroyRenderWindow".}
proc xFlip*() {.X3DDECL, importc: "xFlip".}
proc xBackBuffer*(): Handle {.X3DDECL, importc: "xBackBuffer".}
proc xLockBuffer*(buffer: int = NULL) {.X3DDECL, importc: "xLockBuffer".}
proc xUnlockBuffer*(buffer: int = NULL) {.X3DDECL, importc: "xUnlockBuffer".}
proc xWritePixelFast*(x: int, y: int, argb: int, buffer: int = -1) {.X3DDECL, importc: "xWritePixelFast".}
proc xReadPixelFast*(x: int, y: int, buffer: int = -1): int {.X3DDECL, importc: "xReadPixelFast".}
proc xGetPixels*(buffer: int = -1): Handle {.X3DDECL, importc: "xGetPixels".}
proc xSaveBuffer*(buffer: int, path: cstring) {.X3DDECL, importc: "xSaveBuffer".}
proc xGetCurrentBuffer*(): int {.X3DDECL, importc: "xGetCurrentBuffer".}
proc xBufferWidth*(buffer: int = NULL): int {.X3DDECL, importc: "xBufferWidth".}
proc xBufferHeight*(buffer: int = NULL): int {.X3DDECL, importc: "xBufferHeight".}
proc xCatchTimestamp*(): Handle {.X3DDECL, importc: "xCatchTimestamp".}
proc xGetElapsedTime*(timeStamp: Handle): float32 {.X3DDECL, importc: "xGetElapsedTime".}
proc xSetBuffer*(buffer: int = NULL) {.X3DDECL, importc: "xSetBuffer".}
proc xSetMRT*(buffer: Handle, frame: int, index: int) {.X3DDECL, importc: "xSetMRT".}
proc xUnSetMRT*() {.X3DDECL, importc: "xUnSetMRT".}
proc xGetNumberRT*(): int {.X3DDECL, importc: "xGetNumberRT".}
proc xTextureBuffer*(texture: Handle, frame: int = 0): Handle {.X3DDECL, importc: "xTextureBuffer".}
proc xLoadBuffer*(buffer: int, path: cstring) {.X3DDECL, importc: "xLoadBuffer".}
proc xWritePixel*(x: int, y: int, argb: int, buffer: int = NULL) {.X3DDECL, importc: "xWritePixel".}
proc xCopyPixel*(sx: int, sy: int, sourceBuffer: int, dx: int, dy: int, destinationBuffer: int) {.X3DDECL, importc: "xCopyPixel".}
proc xCopyPixelFast*(sx: int, sy: int, sourceBuffer: int, dx: int, dy: int, destinationBuffer: int) {.X3DDECL, importc: "xCopyPixelFast".}
proc xCopyRect*(sx: int, sy: int, sw: int, sh: int, dx: int, dy: int, sourceBuffer: int, destinationBuffer: int) {.X3DDECL, importc: "xCopyRect".}
proc xGraphicsBuffer*(): int {.X3DDECL, importc: "xGraphicsBuffer".}
proc xGetColor*(x: int, y: int): int {.X3DDECL, importc: "xGetColor".}
proc xReadPixel*(x: int, y: int, buffer: int = NULL): int {.X3DDECL, importc: "xReadPixel".}
proc xGraphicsWidth*(isVirtual: bool = true): int {.X3DDECL, importc: "xGraphicsWidth".}
proc xGraphicsHeight*(isVirtual: bool = true): int {.X3DDECL, importc: "xGraphicsHeight".}
proc xGraphicsDepth*(): int {.X3DDECL, importc: "xGraphicsDepth".}
proc xColorAlpha*(): int {.X3DDECL, importc: "xColorAlpha".}
proc xColorRed*(): int {.X3DDECL, importc: "xColorRed".}
proc xColorGreen*(): int {.X3DDECL, importc: "xColorGreen".}
proc xColorBlue*(): int {.X3DDECL, importc: "xColorBlue".}
proc xClsColor*(red: int, green: int, blue: int, alpha: int = 255) {.X3DDECL, importc: "xClsColor".}
proc xClearWorld*(entities: bool = true, brushes: bool = true, textures: bool = true) {.X3DDECL, importc: "xClearWorld".}
proc xColor*(red: int, green: int, blue: int, alpha: int = 255) {.X3DDECL, importc: "xColor".}
proc xCls*() {.X3DDECL, importc: "xCls".}
proc xUpdateWorld*(speed: float32 = 1.0f) {.X3DDECL, importc: "xUpdateWorld".}
proc xRenderEntity*(camera: Handle, entity: Handle, tween: float32 = 1.0f) {.X3DDECL, importc: "xRenderEntity".}
proc xRenderWorld*(tween: float32 = 1.0f, renderShadows: bool = false) {.X3DDECL, importc: "xRenderWorld".}
proc xSetAutoTB*(flag: bool) {.X3DDECL, importc: "xSetAutoTB".}
proc xMaxClipPlanes*(): int {.X3DDECL, importc: "xMaxClipPlanes".}
proc xWireframe*(state: int) {.X3DDECL, importc: "xWireframe".}
proc xDither*(state: int) {.X3DDECL, importc: "xDither".}
proc xSetSkinningMethod*(skinMethod: int) {.X3DDECL, importc: "xSetSkinningMethod".}
proc xTrisRendered*(): int {.X3DDECL, importc: "xTrisRendered".}
proc xDIPCounter*(): int {.X3DDECL, importc: "xDIPCounter".}
proc xSurfRendered*(): int {.X3DDECL, importc: "xSurfRendered".}
proc xEntityRendered*(): int {.X3DDECL, importc: "xEntityRendered".}
proc xAmbientLight*(red: int, green: int, blue: int, world: Handle = NULL) {.X3DDECL, importc: "xAmbientLight".}
proc xGetFPS*(): int {.X3DDECL, importc: "xGetFPS".}
proc xAntiAlias*(state: int) {.X3DDECL, importc: "xAntiAlias".}
proc xSetTextureFiltering*(filter: int) {.X3DDECL, importc: "xSetTextureFiltering".}
proc xStretchRect*(texture1: Handle, x1: int, y1: int, width1: int, height1: int, texture2: Handle, x2: int, y2: int, width2: int, height2: int, filter: int) {.X3DDECL, importc: "xStretchRect".}
proc xStretchBackBuffer*(texture: Handle, x: int, y: int, width: int, height: int, filter: int) {.X3DDECL, importc: "xStretchBackBuffer".}
proc xGetDevice*(): Handle {.X3DDECL, importc: "xGetDevice".}
proc xReleaseGraphics*() {.X3DDECL, importc: "xReleaseGraphics".}
proc xShowPointer*() {.X3DDECL, importc: "xShowPointer".}
proc xHidePointer*() {.X3DDECL, importc: "xHidePointer".}
proc xCreateDSS*(width: int, height: int) {.X3DDECL, importc: "xCreateDSS".}
proc xDeleteDSS*() {.X3DDECL, importc: "xDeleteDSS".}
proc xGridColor*(centerRed: int, centerGreen: int, centerBlue: int, gridRed: int, gridGreen: int, gridBlue: int) {.X3DDECL, importc: "xGridColor".}
proc xDrawGrid*(x: float32, z: float32, gridSize: int, range: int) {.X3DDECL, importc: "xDrawGrid".}
proc xDrawBBox*(draw: bool, zOn: bool, red: int, green: int, blue: int, alpha: int) {.X3DDECL, importc: "xDrawBBox".}
proc xGraphics3D*(width: int = 1024, height: int = 768, depth: int = 0, mode: int = 0, vsync: int = 1) {.X3DDECL, importc: "xGraphics3D".}
proc xGraphicsAspectRatio*(aspectRatio: float32) {.X3DDECL, importc: "xGraphicsAspectRatio".}
proc xGraphicsBorderColor*(red: int, green: int, blue: int) {.X3DDECL, importc: "xGraphicsBorderColor".}
proc xGetRenderWindow*(): Handle {.X3DDECL, importc: "xGetRenderWindow".}
proc xKey*(key: cstring) {.X3DDECL, importc: "xKey".}
proc xSetEngineSetting*(parameter: cstring, value: cstring) {.X3DDECL, importc: "xSetEngineSetting".}
proc xGetEngineSetting*(parameter: cstring): cstring {.X3DDECL, importc: "xGetEngineSetting".}
proc xHWInstancingAvailable*(): int {.X3DDECL, importc: "xHWInstancingAvailable".}
proc xShaderInstancingAvailable*(): int {.X3DDECL, importc: "xShaderInstancingAvailable".}
proc xSetShaderLayer*(layer: int) {.X3DDECL, importc: "xSetShaderLayer".}
proc xGetShaderLayer*(): int {.X3DDECL, importc: "xGetShaderLayer".}
proc xDrawMovementGizmo*(x: float32, y: float32, z: float32, selectMask: int = 0) {.X3DDECL, importc: "xDrawMovementGizmo".}
proc xDrawScaleGizmo*(x: float32, y: float32, z: float32, selectMask: int = 0, sx: float32 = 1.0f, sy: float32 = 1.0f, sz: float32 = 1.0f) {.X3DDECL, importc: "xDrawScaleGizmo".}
proc xDrawRotationGizmo*(x: float32, y: float32, z: float32, selectMask: int = 0, pitch: float32 = 0.0f, yaw: float32 = 0.0f, roll: float32 = 0.0f) {.X3DDECL, importc: "xDrawRotationGizmo".}
proc xCheckMovementGizmo*(x: float32, y: float32, z: float32, camera: Handle, mx: int, my: int): int {.X3DDECL, importc: "xCheckMovementGizmo".}
proc xCheckScaleGizmo*(x: float32, y: float32, z: float32, camera: Handle, mx: int, my: int): int {.X3DDECL, importc: "xCheckScaleGizmo".}
proc xCheckRotationGizmo*(x: float32, y: float32, z: float32, camera: Handle, mx: int, my: int): int {.X3DDECL, importc: "xCheckRotationGizmo".}
proc xCaptureWorld*() {.X3DDECL, importc: "xCaptureWorld".}
proc xCountGfxModes*(): int {.X3DDECL, importc: "xCountGfxModes".}
proc xGfxModeWidth*(mode: int): int {.X3DDECL, importc: "xGfxModeWidth".}
proc xGfxModeHeight*(mode: int): int {.X3DDECL, importc: "xGfxModeHeight".}
proc xGfxModeDepth*(mode: int): int {.X3DDECL, importc: "xGfxModeDepth".}
proc xGfxModeExists*(width: int, height: int, depth: int): int {.X3DDECL, importc: "xGfxModeExists".}
proc xAppWindowFrame*(state: int) {.X3DDECL, importc: "xAppWindowFrame".}
proc xMillisecs*(): int {.X3DDECL, importc: "xMillisecs".}
proc xDeltaTime*(fromInit: bool = false): int {.X3DDECL, importc: "xDeltaTime".}
proc xDeltaValue*(value: float32, time: int = 0): float32 {.X3DDECL, importc: "xDeltaValue".}
proc xAddDeviceLostCallback*(f: int) {.X3DDECL, importc: "xAddDeviceLostCallback".}
proc xDeleteDeviceLostCallback*(f: int) {.X3DDECL, importc: "xDeleteDeviceLostCallback".}
proc xDeinit*() {.X3DDECL, importc: "xDeinit".}
# images commands
proc xImageColor*(image: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xImageColor".}
proc xImageAlpha*(image: Handle, alpha: float32) {.X3DDECL, importc: "xImageAlpha".}
proc xImageBuffer*(image: Handle, frame: int = 0): Handle {.X3DDECL, importc: "xImageBuffer".}
proc xCreateImage*(width: int, height: int, frame: int = 1): Handle {.X3DDECL, importc: "xCreateImage".}
proc xGrabImage*(image: Handle, x: int, y: int, frame: int = 0) {.X3DDECL, importc: "xGrabImage".}
proc xFreeImage*(image: Handle) {.X3DDECL, importc: "xFreeImage".}
proc xLoadImage*(path: cstring): Handle {.X3DDECL, importc: "xLoadImage".}
proc xLoadAnimImage*(path: cstring, width: int, height: int, startFrame: int, frames: int): Handle {.X3DDECL, importc: "xLoadAnimImage".}
proc xSaveImage*(image: Handle, path: cstring, frame: int = 0) {.X3DDECL, importc: "xSaveImage".}
proc xDrawImage*(image: Handle, x: float32, y: float32, frame: int = 0) {.X3DDECL, importc: "xDrawImage".}
proc xDrawImageRect*(image: Handle, x: float32, y: float32, rectx: float32, recty: float32, rectWidth: float32, rectHeight: float32, frame: int = 0) {.X3DDECL, importc: "xDrawImageRect".}
proc xScaleImage*(image: Handle, x: float32, y: float32) {.X3DDECL, importc: "xScaleImage".}
proc xResizeImage*(image: Handle, width: float32, height: float32) {.X3DDECL, importc: "xResizeImage".}
proc xRotateImage*(image: Handle, angle: float32) {.X3DDECL, importc: "xRotateImage".}
proc xImageAngle*(image: Handle): float32 {.X3DDECL, importc: "xImageAngle".}
proc xImageWidth*(image: Handle): int {.X3DDECL, importc: "xImageWidth".}
proc xImageHeight*(image: Handle): int {.X3DDECL, importc: "xImageHeight".}
proc xImagesCollide*(image1: Handle, x1: int, y1: int, frame1: int, image2: Handle, x2: int, y2: int, frame2: int): int {.X3DDECL, importc: "xImagesCollide".}
proc xImageRectCollide*(image: Handle, x: int, y: int, frame: int, rectx: int, recty: int, rectWidth: int, rectHeight: int): int {.X3DDECL, importc: "xImageRectCollide".}
proc xImageRectOverlap*(image: Handle, x: float32, y: float32, rectx: float32, recty: float32, rectWidth: float32, rectHeight: float32): int {.X3DDECL, importc: "xImageRectOverlap".}
proc xImageXHandle*(image: Handle): int {.X3DDECL, importc: "xImageXHandle".}
proc xImageYHandle*(image: Handle): int {.X3DDECL, importc: "xImageYHandle".}
proc xHandleImage*(image: Handle, x: float32, y: float32) {.X3DDECL, importc: "xHandleImage".}
proc xMidHandle*(image: Handle) {.X3DDECL, importc: "xMidHandle".}
proc xAutoMidHandle*(state: int) {.X3DDECL, importc: "xAutoMidHandle".}
proc xTileImage*(image: Handle, x: float32, y: float32, frame: int = 0) {.X3DDECL, importc: "xTileImage".}
proc xImagesOverlap*(image1: Handle, x1: float32, y1: float32, image2: Handle, x2: float32, y2: float32): int {.X3DDECL, importc: "xImagesOverlap".}
proc xMaskImage*(image: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xMaskImage".}
proc xCopyImage*(image: Handle): Handle {.X3DDECL, importc: "xCopyImage".}
proc xDrawBlock*(image: Handle, x: float32, y: float32, frame: int = 0) {.X3DDECL, importc: "xDrawBlock".}
proc xDrawBlockRect*(image: Handle, x: float32, y: float32, rectx: float32, recty: float32, rectWidth: float32, rectHeight: float32, frame: int = 0) {.X3DDECL, importc: "xDrawBlockRect".}
proc xImageActualWidth*(image: Handle): int {.X3DDECL, importc: "xImageActualWidth".}
proc xImageActualHeight*(image: Handle): int {.X3DDECL, importc: "xImageActualHeight".}
# inputs commands
proc xFlushKeys*() {.X3DDECL, importc: "xFlushKeys".}
proc xFlushMouse*() {.X3DDECL, importc: "xFlushMouse".}
proc xKeyHit*(key: int): int {.X3DDECL, importc: "xKeyHit".}
proc xKeyUp*(key: int): int {.X3DDECL, importc: "xKeyUp".}
proc xWaitKey*() {.X3DDECL, importc: "xWaitKey".}
proc xMouseHit*(key: int): int {.X3DDECL, importc: "xMouseHit".}
proc xKeyDown*(key: int): int {.X3DDECL, importc: "xKeyDown".}
proc xGetKey*(): int {.X3DDECL, importc: "xGetKey".}
proc xMouseDown*(key: int): int {.X3DDECL, importc: "xMouseDown".}
proc xMouseUp*(key: int): int {.X3DDECL, importc: "xMouseUp".}
proc xGetMouse*(): int {.X3DDECL, importc: "xGetMouse".}
proc xMouseX*(): int {.X3DDECL, importc: "xMouseX".}
proc xMouseY*(): int {.X3DDECL, importc: "xMouseY".}
proc xMouseZ*(): int {.X3DDECL, importc: "xMouseZ".}
proc xMouseXSpeed*(): int {.X3DDECL, importc: "xMouseXSpeed".}
proc xMouseYSpeed*(): int {.X3DDECL, importc: "xMouseYSpeed".}
proc xMouseZSpeed*(): int {.X3DDECL, importc: "xMouseZSpeed".}
proc xMouseSpeed*(): int {.X3DDECL, importc: "xMouseSpeed".}
proc xMoveMouse*(x: int, y: int) {.X3DDECL, importc: "xMoveMouse".}
# joysticks commands
proc xJoyType*(portID: int = 0): int {.X3DDECL, importc: "xJoyType".}
proc xJoyDown*(key: int, portID: int = 0): int {.X3DDECL, importc: "xJoyDown".}
proc xJoyHit*(key: int, portID: int = 0): int {.X3DDECL, importc: "xJoyHit".}
proc xGetJoy*(portID: int = 0): int {.X3DDECL, importc: "xGetJoy".}
proc xFlushJoy*() {.X3DDECL, importc: "xFlushJoy".}
proc xWaitJoy*(portID: int = 0): int {.X3DDECL, importc: "xWaitJoy".}
proc xJoyX*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyX".}
proc xJoyY*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyY".}
proc xJoyZ*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyZ".}
proc xJoyU*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyU".}
proc xJoyV*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyV".}
proc xJoyPitch*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyPitch".}
proc xJoyYaw*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyYaw".}
proc xJoyRoll*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyRoll".}
proc xJoyHat*(portID: int = 0): float32 {.X3DDECL, importc: "xJoyHat".}
proc xJoyXDir*(portID: int = 0): int {.X3DDECL, importc: "xJoyXDir".}
proc xJoyYDir*(portID: int = 0): int {.X3DDECL, importc: "xJoyYDir".}
proc xJoyZDir*(portID: int = 0): int {.X3DDECL, importc: "xJoyZDir".}
proc xJoyUDir*(portID: int = 0): int {.X3DDECL, importc: "xJoyUDir".}
proc xJoyVDir*(portID: int = 0): int {.X3DDECL, importc: "xJoyVDir".}
proc xCountJoys*(): int {.X3DDECL, importc: "xCountJoys".}
# lights commands
proc xCreateLight*(typeID: int = 1): Handle {.X3DDECL, importc: "xCreateLight".}
proc xLightShadowEpsilons*(light: Handle, epsilon1: float32, epsilon2: float32) {.X3DDECL, importc: "xLightShadowEpsilons".}
proc xLightEnableShadows*(light: Handle, state: int) {.X3DDECL, importc: "xLightEnableShadows".}
proc xLightShadowsEnabled*(light: Handle): int {.X3DDECL, importc: "xLightShadowsEnabled".}
proc xLightRange*(light: Handle, range: float32) {.X3DDECL, importc: "xLightRange".}
proc xLightColor*(light: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xLightColor".}
proc xLightConeAngles*(light: Handle, inner: float32, outer: float32) {.X3DDECL, importc: "xLightConeAngles".}
# logging commands
proc xCreateLog*(target: int = 1, level: int = 0, filename: cstring = "xors_log.html", cssfilename: cstring = ""): int {.X3DDECL, importc: "xCreateLog".}
proc xCloseLog*(): int {.X3DDECL, importc: "xCloseLog".}
proc xGetLogString*(): cstring {.X3DDECL, importc: "xGetLogString".}
proc xClearLogString*() {.X3DDECL, importc: "xClearLogString".}
proc xSetLogLevel*(level: int = 2) {.X3DDECL, importc: "xSetLogLevel".}
proc xSetLogTarget*(target: int = 1) {.X3DDECL, importc: "xSetLogTarget".}
proc xGetLogLevel*(): int {.X3DDECL, importc: "xGetLogLevel".}
proc xGetLogTarget*(): int {.X3DDECL, importc: "xGetLogTarget".}
proc xLogInfo*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.X3DDECL, importc: "xLogInfo".}
proc xLogMessage*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.X3DDECL, importc: "xLogMessage".}
proc xLogWarning*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.X3DDECL, importc: "xLogWarning".}
proc xLogError*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.X3DDECL, importc: "xLogError".}
proc xLogFatal*(message: cstring, f: cstring = "", file: cstring = "", line: int = -1) {.X3DDECL, importc: "xLogFatal".}
# meshes commands
proc xCreateMesh*(parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateMesh".}
proc xLoadMesh*(path: cstring, parent: Handle = NULL): Handle {.X3DDECL, importc: "xLoadMesh".}
proc xLoadMeshWithChild*(path: cstring, parent: Handle = NULL): Handle {.X3DDECL, importc: "xLoadMeshWithChild".}
proc xLoadAnimMesh*(path: cstring, parent: Handle = NULL): Handle {.X3DDECL, importc: "xLoadAnimMesh".}
proc xCreateCube*(parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateCube".}
proc xCreateSphere*(segments: int = 16, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateSphere".}
proc xCreateCylinder*(segments: int = 16, solid: bool = true, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateCylinder".}
proc xCreateTorus*(segments: int = 16, R: float32 = 1.0f, r_tube: float32 = 0.025f, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateTorus".}
proc xCreateCone*(segments: int = 16, solid: bool = true, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateCone".}
proc xCopyMesh*(entity: Handle, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCopyMesh".}
proc xAddMesh*(source: Handle, destination: Handle) {.X3DDECL, importc: "xAddMesh".}
proc xFlipMesh*(entity: Handle) {.X3DDECL, importc: "xFlipMesh".}
proc xPaintMesh*(entity: Handle, brush: Handle) {.X3DDECL, importc: "xPaintMesh".}
proc xFitMesh*(entity: Handle, x: float32, y: float32, z: float32, width: float32, height: float32, depth: float32, uniform: bool = false) {.X3DDECL, importc: "xFitMesh".}
proc xMeshWidth*(entity: Handle, recursive: bool = false): float32 {.X3DDECL, importc: "xMeshWidth".}
proc xMeshHeight*(entity: Handle, recursive: bool = false): float32 {.X3DDECL, importc: "xMeshHeight".}
proc xMeshDepth*(entity: Handle, recursive: bool = false): float32 {.X3DDECL, importc: "xMeshDepth".}
proc xScaleMesh*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xScaleMesh".}
proc xRotateMesh*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xRotateMesh".}
proc xPositionMesh*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xPositionMesh".}
proc xUpdateNormals*(entity: Handle) {.X3DDECL, importc: "xUpdateNormals".}
proc xUpdateN*(entity: Handle) {.X3DDECL, importc: "xUpdateN".}
proc xUpdateTB*(entity: Handle) {.X3DDECL, importc: "xUpdateTB".}
proc xMeshesBBIntersect*(entity1: Handle, entity2: Handle): int {.X3DDECL, importc: "xMeshesBBIntersect".}
proc xMeshesIntersect*(entity1: Handle, entity2: Handle): int {.X3DDECL, importc: "xMeshesIntersect".}
proc xGetMeshVB*(entity: Handle): Handle {.X3DDECL, importc: "xGetMeshVB".}
proc xGetMeshIB*(entity: Handle): Handle {.X3DDECL, importc: "xGetMeshIB".}
proc xGetMeshVBSize*(entity: Handle): int {.X3DDECL, importc: "xGetMeshVBSize".}
proc xGetMeshIBSize*(entity: Handle): int {.X3DDECL, importc: "xGetMeshIBSize".}
proc xDeleteMeshVB*(entity: Handle) {.X3DDECL, importc: "xDeleteMeshVB".}
proc xDeleteMeshIB*(entity: Handle) {.X3DDECL, importc: "xDeleteMeshIB".}
proc xCountSurfaces*(entity: Handle): int {.X3DDECL, importc: "xCountSurfaces".}
proc xGetSurface*(entity: Handle, index: int): Handle {.X3DDECL, importc: "xGetSurface".}
proc xCreatePivot*(parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreatePivot".}
proc xFindSurface*(entity: Handle, brush: Handle): Handle {.X3DDECL, importc: "xFindSurface".}
proc xCreatePoly*(sides: int = 0, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreatePoly".}
proc xMeshSingleSurface*(entity: Handle) {.X3DDECL, importc: "xMeshSingleSurface".}
proc xSaveMesh*(entity: Handle, path: cstring): int {.X3DDECL, importc: "xSaveMesh".}
proc xLightMesh*(entity: Handle, red: int, green: int, blue: int, range: float32 = 0.0f, lightX: float32 = 0.0f, lightY: float32 = 0.0f, lightZ: float32 = 0.0f) {.X3DDECL, importc: "xLightMesh".}
proc xMeshPrimitiveType*(entity: Handle, ptype: int) {.X3DDECL, importc: "xMeshPrimitiveType".}
# particles commands
proc xParticlePosition*(particle: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xParticlePosition".}
proc xParticleX*(particle: Handle): float32 {.X3DDECL, importc: "xParticleX".}
proc xParticleY*(particle: Handle): float32 {.X3DDECL, importc: "xParticleY".}
proc xParticleZ*(particle: Handle): float32 {.X3DDECL, importc: "xParticleZ".}
proc xParticleVeclocity*(particle: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xParticleVeclocity".}
proc xParticleVX*(particle: Handle): float32 {.X3DDECL, importc: "xParticleVX".}
proc xParticleVY*(particle: Handle): float32 {.X3DDECL, importc: "xParticleVY".}
proc xParticleVZ*(particle: Handle): float32 {.X3DDECL, importc: "xParticleVZ".}
proc xParticleRotation*(particle: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xParticleRotation".}
proc xParticlePitch*(particle: Handle): float32 {.X3DDECL, importc: "xParticlePitch".}
proc xParticleYaw*(particle: Handle): float32 {.X3DDECL, importc: "xParticleYaw".}
proc xParticleRoll*(particle: Handle): float32 {.X3DDECL, importc: "xParticleRoll".}
proc xParticleTorque*(particle: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xParticleTorque".}
proc xParticleTPitch*(particle: Handle): float32 {.X3DDECL, importc: "xParticleTPitch".}
proc xParticleTYaw*(particle: Handle): float32 {.X3DDECL, importc: "xParticleTYaw".}
proc xParticleTRoll*(particle: Handle): float32 {.X3DDECL, importc: "xParticleTRoll".}
proc xParticleSetAlpha*(particle: Handle, alpha: float32) {.X3DDECL, importc: "xParticleSetAlpha".}
proc xParticleGetAlpha*(particle: Handle): float32 {.X3DDECL, importc: "xParticleGetAlpha".}
proc xParticleColor*(particle: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xParticleColor".}
proc xParticleRed*(particle: Handle): float32 {.X3DDECL, importc: "xParticleRed".}
proc xParticleGreen*(particle: Handle): float32 {.X3DDECL, importc: "xParticleGreen".}
proc xParticleBlue*(particle: Handle): float32 {.X3DDECL, importc: "xParticleBlue".}
proc xParticleScale*(particle: Handle, x: float32, y: float32) {.X3DDECL, importc: "xParticleScale".}
proc xParticleSX*(particle: Handle): float32 {.X3DDECL, importc: "xParticleSX".}
proc xParticleSY*(particle: Handle): float32 {.X3DDECL, importc: "xParticleSY".}
proc xParticleScaleSpeed*(particle: Handle, x: float32, y: float32) {.X3DDECL, importc: "xParticleScaleSpeed".}
proc xParticleScaleSpeedX*(particle: Handle): float32 {.X3DDECL, importc: "xParticleScaleSpeedX".}
proc xParticleScaleSpeedY*(particle: Handle): float32 {.X3DDECL, importc: "xParticleScaleSpeedY".}
# physics commands
proc xEntityAddDummyShape*(entity: Handle) {.X3DDECL, importc: "xEntityAddDummyShape".}
proc xEntityAddBoxShape*(entity: Handle, mass: float32, width: float32 = 0.0f, height: float32 = 0.0f, depth: float32 = 0.0f) {.X3DDECL, importc: "xEntityAddBoxShape".}
proc xEntityAddSphereShape*(entity: Handle, mass: float32, radius: float32 = 0.0f) {.X3DDECL, importc: "xEntityAddSphereShape".}
proc xEntityAddCapsuleShape*(entity: Handle, mass: float32, radius: float32 = 0.0f, height: float32 = 0.0f) {.X3DDECL, importc: "xEntityAddCapsuleShape".}
proc xEntityAddConeShape*(entity: Handle, mass: float32, radius: float32 = 0.0f, height: float32 = 0.0f) {.X3DDECL, importc: "xEntityAddConeShape".}
proc xEntityAddCylinderShape*(entity: Handle, mass: float32, width: float32 = 0.0f, height: float32 = 0.0f, depth: float32 = 0.0f) {.X3DDECL, importc: "xEntityAddCylinderShape".}
proc xEntityAddTriMeshShape*(entity: Handle) {.X3DDECL, importc: "xEntityAddTriMeshShape".}
proc xEntityAddTriMeshShapeProxy*(entity: Handle, proxy: Handle) {.X3DDECL, importc: "xEntityAddTriMeshShapeProxy".}
proc xEntityAddConvexShape*(entity: Handle, mass: float32) {.X3DDECL, importc: "xEntityAddConvexShape".}
proc xEntityAddConvexShapeProxy*(entity: Handle, proxy: Handle, mass: float32) {.X3DDECL, importc: "xEntityAddConvexShapeProxy".}
proc xEntityAddConcaveShape*(entity: Handle, mass: float32) {.X3DDECL, importc: "xEntityAddConcaveShape".}
proc xEntityAddConcaveShapeProxy*(entity: Handle, proxy: Handle, mass: float32) {.X3DDECL, importc: "xEntityAddConcaveShapeProxy".}
proc xEntityAddTerrainShape*(entity: Handle) {.X3DDECL, importc: "xEntityAddTerrainShape".}
proc xEntityAttachBody*(entity: Handle, body: Handle) {.X3DDECL, importc: "xEntityAttachBody".}
proc xEntityDetachBody*(entity: Handle): Handle {.X3DDECL, importc: "xEntityDetachBody".}
proc xFreeEntityBody*(entity: Handle) {.X3DDECL, importc: "xFreeEntityBody".}
proc xEntityAddCompoundShape*(entity: Handle, mass: float32) {.X3DDECL, importc: "xEntityAddCompoundShape".}
proc xEntityCompoundAddBox*(entity: Handle, width: float32, height: float32, depth: float32): int {.X3DDECL, importc: "xEntityCompoundAddBox".}
proc xEntityCompoundAddSphere*(entity: Handle, radius: float32): int {.X3DDECL, importc: "xEntityCompoundAddSphere".}
proc xEntityCompoundAddCapsule*(entity: Handle, radius: float32, height: float32): int {.X3DDECL, importc: "xEntityCompoundAddCapsule".}
proc xEntityCompoundAddCone*(entity: Handle, radius: float32, height: float32): int {.X3DDECL, importc: "xEntityCompoundAddCone".}
proc xEntityCompoundAddCylinder*(entity: Handle, radius: float32, height: float32): int {.X3DDECL, importc: "xEntityCompoundAddCylinder".}
proc xEntityCompoundCountChildren*(entity: Handle): int {.X3DDECL, importc: "xEntityCompoundCountChildren".}
proc xEntityCompoundRemoveChild*(entity: Handle, index: int) {.X3DDECL, importc: "xEntityCompoundRemoveChild".}
proc xEntityCompoundChildSetPosition*(entity: Handle, index: int, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntityCompoundChildSetPosition".}
proc xEntityCompoundChildGetX*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityCompoundChildGetX".}
proc xEntityCompoundChildGetY*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityCompoundChildGetY".}
proc xEntityCompoundChildGetZ*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityCompoundChildGetZ".}
proc xEntityCompoundChildSetRotation*(entity: Handle, index: int, pitch: float32, yaw: float32, roll: float32) {.X3DDECL, importc: "xEntityCompoundChildSetRotation".}
proc xEntityCompoundChildGetPitch*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityCompoundChildGetPitch".}
proc xEntityCompoundChildGetYaw*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityCompoundChildGetYaw".}
proc xEntityCompoundChildGetRoll*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityCompoundChildGetRoll".}
proc xCreateHingeJoint*(firstBody: Handle, secondBody: Handle, pivotX: float32, pivotY: float32, pivotZ: float32, axisX: float32, axisY: float32, axisZ: float32, isGlobal: bool = false): Handle {.X3DDECL, importc: "xCreateHingeJoint".}
proc xCreateBallJoint*(firstBody: Handle, secondBody: Handle, pivotX: float32, pivotY: float32, pivotZ: float32, isGlobal: bool = false): Handle {.X3DDECL, importc: "xCreateBallJoint".}
proc xCreateD6Joint*(firstBody: Handle, secondBody: Handle, pivot1X: float32, pivot1Y: float32, pivot1Z: float32, pivot2X: float32, pivot2Y: float32, pivot2Z: float32, isGlobal1: bool = false, isGlobal2: bool = false): Handle {.X3DDECL, importc: "xCreateD6Joint".}
proc xCreateD6SpringJoint*(firstBody: Handle, secondBody: Handle, pivot1X: float32, pivot1Y: float32, pivot1Z: float32, pivot2X: float32, pivot2Y: float32, pivot2Z: float32, isGlobal1: bool = false, isGlobal2: bool = false): Handle {.X3DDECL, importc: "xCreateD6SpringJoint".}
proc xJointHingeGetAngle*(joint: Handle): float32 {.X3DDECL, importc: "xJointHingeGetAngle".}
proc xJointD6GetPitchAngle*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetPitchAngle".}
proc xJointD6GetYawAngle*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetYawAngle".}
proc xJointD6GetRollAngle*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetRollAngle".}
proc xJointD6GetAngle*(joint: Handle, axis: int = 0): float32 {.X3DDECL, importc: "xJointD6GetAngle".}
proc xJointDisableCollisions*(joint: Handle, state: int) {.X3DDECL, importc: "xJointDisableCollisions".}
proc xJointEnable*(joint: Handle, state: int) {.X3DDECL, importc: "xJointEnable".}
proc xJointIsEnabled*(joint: Handle): int {.X3DDECL, importc: "xJointIsEnabled".}
proc xJointGetImpulse*(joint: Handle): float32 {.X3DDECL, importc: "xJointGetImpulse".}
proc xFreeJoint*(joint: Handle) {.X3DDECL, importc: "xFreeJoint".}
proc xJointBallSetPivot*(joint: Handle, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xJointBallSetPivot".}
proc xJointBallGetPivotX*(joint: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xJointBallGetPivotX".}
proc xJointBallGetPivotY*(joint: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xJointBallGetPivotY".}
proc xJointBallGetPivotZ*(joint: Handle, isGlobal: bool = false): float32 {.X3DDECL, importc: "xJointBallGetPivotZ".}
proc xJointD6SetLimits*(joint: Handle, axis: int, lower: float32, upper: float32) {.X3DDECL, importc: "xJointD6SetLimits".}
proc xJointD6SetLowerLinearLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32) {.X3DDECL, importc: "xJointD6SetLowerLinearLimits".}
proc xJointD6SetUpperLinearLimits*(joint: Handle, upperX: float32, upperY: float32, upperZ: float32) {.X3DDECL, importc: "xJointD6SetUpperLinearLimits".}
proc xJointD6SetLowerAngularLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32) {.X3DDECL, importc: "xJointD6SetLowerAngularLimits".}
proc xJointD6SetUpperAngularLimits*(joint: Handle, upperX: float32, upperY: float32, upperZ: float32) {.X3DDECL, importc: "xJointD6SetUpperAngularLimits".}
proc xJointD6SetLinearLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32, upperX: float32, upperY: float32, upperZ: float32) {.X3DDECL, importc: "xJointD6SetLinearLimits".}
proc xJointD6SetAngularLimits*(joint: Handle, lowerX: float32, lowerY: float32, lowerZ: float32, upperX: float32, upperY: float32, upperZ: float32) {.X3DDECL, importc: "xJointD6SetAngularLimits".}
proc xJointD6GetLinearLowerX*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetLinearLowerX".}
proc xJointD6GetLinearLowerY*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetLinearLowerY".}
proc xJointD6GetLinearLowerZ*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetLinearLowerZ".}
proc xJointD6GetLinearUpperX*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetLinearUpperX".}
proc xJointD6GetLinearUpperY*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetLinearUpperY".}
proc xJointD6GetLinearUpperZ*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetLinearUpperZ".}
proc xJointD6GetAngularLowerX*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetAngularLowerX".}
proc xJointD6GetAngularLowerY*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetAngularLowerY".}
proc xJointD6GetAngularLowerZ*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetAngularLowerZ".}
proc xJointD6GetAngularUpperX*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetAngularUpperX".}
proc xJointD6GetAngularUpperY*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetAngularUpperY".}
proc xJointD6GetAngularUpperZ*(joint: Handle): float32 {.X3DDECL, importc: "xJointD6GetAngularUpperZ".}
proc xJointD6SpringSetParam*(joint: Handle, index: int, enabled: int, damping: float32 = 1.0f, stiffness: float32 = 1.0f) {.X3DDECL, importc: "xJointD6SpringSetParam".}
proc xJointHingeSetAxis*(joint: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xJointHingeSetAxis".}
proc xJointHingeSetLimits*(joint: Handle, lowerLimit: float32, upperLimit: float32, softness: float32 = 0.9f, biasFactor: float32 = 0.3f, relaxationFactor: float32 = 1.0f) {.X3DDECL, importc: "xJointHingeSetLimits".}
proc xJointHingeGetLowerLimit*(joint: Handle): float32 {.X3DDECL, importc: "xJointHingeGetLowerLimit".}
proc xJointHingeGetUpperLimit*(joint: Handle): float32 {.X3DDECL, importc: "xJointHingeGetUpperLimit".}
proc xJointEnableMotor*(joint: Handle, enabled: int, targetVelocity: float32, maxForce: float32, index: int = 0) {.X3DDECL, importc: "xJointEnableMotor".}
proc xJointHingeSetMotorTarget*(joint: Handle, targetAngle: float32, deltaTime: float32) {.X3DDECL, importc: "xJointHingeSetMotorTarget".}
proc xJointGetEntityA*(joint: Handle): Handle {.X3DDECL, importc: "xJointGetEntityA".}
proc xJointGetEntityB*(joint: Handle): Handle {.X3DDECL, importc: "xJointGetEntityB".}
proc xEntityApplyCentralForce*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.X3DDECL, importc: "xEntityApplyCentralForce".}
proc xEntityApplyCentralImpulse*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.X3DDECL, importc: "xEntityApplyCentralImpulse".}
proc xEntityApplyTorque*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.X3DDECL, importc: "xEntityApplyTorque".}
proc xEntityApplyTorqueImpulse*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.X3DDECL, importc: "xEntityApplyTorqueImpulse".}
proc xEntityApplyForce*(entity: Handle, x: float32, y: float32, z: float32, pointx: float32, pointy: float32, pointz: float32, isGlobal: bool = true, globalPoint: bool = true) {.X3DDECL, importc: "xEntityApplyForce".}
proc xEntityApplyImpulse*(entity: Handle, x: float32, y: float32, z: float32, pointx: float32, pointy: float32, pointz: float32, isGlobal: bool = true, globalPoint: bool = true) {.X3DDECL, importc: "xEntityApplyImpulse".}
proc xEntityReleaseForces*(entity: Handle) {.X3DDECL, importc: "xEntityReleaseForces".}
proc xWorldSetGravity*(x: float32, y: float32, z: float32, world: Handle = NULL) {.X3DDECL, importc: "xWorldSetGravity".}
proc xWorldGetGravityX*(world: Handle = NULL): float32 {.X3DDECL, importc: "xWorldGetGravityX".}
proc xWorldGetGravityY*(world: Handle = NULL): float32 {.X3DDECL, importc: "xWorldGetGravityY".}
proc xWorldGetGravityZ*(world: Handle = NULL): float32 {.X3DDECL, importc: "xWorldGetGravityZ".}
proc xEntitySetGravity*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntitySetGravity".}
proc xEntityGetGravityX*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetGravityX".}
proc xEntityGetGravityY*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetGravityY".}
proc xEntityGetGravityZ*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetGravityZ".}
proc xEntitySetLinearVelocity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.X3DDECL, importc: "xEntitySetLinearVelocity".}
proc xEntityGetLinearVelocityX*(entity: Handle, isGlobal: bool = true): float32 {.X3DDECL, importc: "xEntityGetLinearVelocityX".}
proc xEntityGetLinearVelocityY*(entity: Handle, isGlobal: bool = true): float32 {.X3DDECL, importc: "xEntityGetLinearVelocityY".}
proc xEntityGetLinearVelocityZ*(entity: Handle, isGlobal: bool = true): float32 {.X3DDECL, importc: "xEntityGetLinearVelocityZ".}
proc xEntitySetAngularVelocity*(entity: Handle, x: float32, y: float32, z: float32, isGlobal: bool = true) {.X3DDECL, importc: "xEntitySetAngularVelocity".}
proc xEntityGetAngularVelocityX*(entity: Handle, isGlobal: bool = true): float32 {.X3DDECL, importc: "xEntityGetAngularVelocityX".}
proc xEntityGetAngularVelocityY*(entity: Handle, isGlobal: bool = true): float32 {.X3DDECL, importc: "xEntityGetAngularVelocityY".}
proc xEntityGetAngularVelocityZ*(entity: Handle, isGlobal: bool = true): float32 {.X3DDECL, importc: "xEntityGetAngularVelocityZ".}
proc xEntitySetDamping*(entity: Handle, linear: float32, angular: float32) {.X3DDECL, importc: "xEntitySetDamping".}
proc xEntityGetLinearDamping*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetLinearDamping".}
proc xEntityGetAngularDamping*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAngularDamping".}
proc xEntitySetFriction*(entity: Handle, friction: float32) {.X3DDECL, importc: "xEntitySetFriction".}
proc xEntityGetFriction*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetFriction".}
proc xEntitySetAnisotropicFriction*(entity: Handle, fx: float32, fy: float32, fz: float32) {.X3DDECL, importc: "xEntitySetAnisotropicFriction".}
proc xEntityGetAnisotropicFrictionX*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAnisotropicFrictionX".}
proc xEntityGetAnisotropicFrictionY*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAnisotropicFrictionY".}
proc xEntityGetAnisotropicFrictionZ*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAnisotropicFrictionZ".}
proc xEntitySetLinearFactor*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntitySetLinearFactor".}
proc xEntityGetLinearFactorX*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetLinearFactorX".}
proc xEntityGetLinearFactorY*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetLinearFactorY".}
proc xEntityGetLinearFactorZ*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetLinearFactorZ".}
proc xEntitySetAngularFactor*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntitySetAngularFactor".}
proc xEntityGetAngularFactorX*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAngularFactorX".}
proc xEntityGetAngularFactorY*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAngularFactorY".}
proc xEntityGetAngularFactorZ*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAngularFactorZ".}
proc xEntitySetRestitution*(entity: Handle, restitution: float32) {.X3DDECL, importc: "xEntitySetRestitution".}
proc xEntityGetRestitution*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetRestitution".}
proc xEntitySetMass*(entity: Handle, mass: float32) {.X3DDECL, importc: "xEntitySetMass".}
proc xEntityGetMass*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetMass".}
proc xEntityCountContacts*(entity: Handle): int {.X3DDECL, importc: "xEntityCountContacts".}
proc xEntityGetContactX*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactX".}
proc xEntityGetContactY*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactY".}
proc xEntityGetContactZ*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactZ".}
proc xEntityGetContactNX*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactNX".}
proc xEntityGetContactNY*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactNY".}
proc xEntityGetContactNZ*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactNZ".}
proc xEntityGetContactDistance*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactDistance".}
proc xEntityGetContact*(entity: Handle, index: int): Handle {.X3DDECL, importc: "xEntityGetContact".}
proc xEntityGetContactImpulse*(entity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityGetContactImpulse".}
proc xEntitySetCollisionGroup*(entity: Handle, group: int) {.X3DDECL, importc: "xEntitySetCollisionGroup".}
proc xEntityGetCollisionGroup*(entity: Handle): int {.X3DDECL, importc: "xEntityGetCollisionGroup".}
proc xEntitySetContactGroup*(entity: Handle, group: int) {.X3DDECL, importc: "xEntitySetContactGroup".}
proc xEntityGetContactGroup*(entity: Handle): int {.X3DDECL, importc: "xEntityGetContactGroup".}
proc xEntitySetRaycastGroup*(entity: Handle, group: int) {.X3DDECL, importc: "xEntitySetRaycastGroup".}
proc xEntityGetRaycastGroup*(entity: Handle): int {.X3DDECL, importc: "xEntityGetRaycastGroup".}
proc xPhysicsSetCollisionFilter*(group0: int, group1: int, state: int) {.X3DDECL, importc: "xPhysicsSetCollisionFilter".}
proc xPhysicsGetCollisionFilter*(group0: int, group1: int): int {.X3DDECL, importc: "xPhysicsGetCollisionFilter".}
proc xPhysicsSetContactFilter*(group0: int, group1: int, state: int) {.X3DDECL, importc: "xPhysicsSetContactFilter".}
proc xPhysicsGetContactFilter*(group0: int, group1: int): int {.X3DDECL, importc: "xPhysicsGetContactFilter".}
proc xPhysicsSetRaycastFilter*(rayGroup: int, bodyGroup: int, state: int) {.X3DDECL, importc: "xPhysicsSetRaycastFilter".}
proc xPhysicsGetRaycastFilter*(rayGroup: int, bodyGroup: int): int {.X3DDECL, importc: "xPhysicsGetRaycastFilter".}
proc xEntityIsSleeping*(entity: Handle): int {.X3DDECL, importc: "xEntityIsSleeping".}
proc xEntityDisableSleeping*(entity: Handle, state: int = 1) {.X3DDECL, importc: "xEntityDisableSleeping".}
proc xEntityWakeUp*(entity: Handle) {.X3DDECL, importc: "xEntityWakeUp".}
proc xEntitySleep*(entity: Handle) {.X3DDECL, importc: "xEntitySleep".}
proc xEntitySetSleepingThresholds*(entity: Handle, linearThreshold: float32, angularThreshold: float32) {.X3DDECL, importc: "xEntitySetSleepingThresholds".}
proc xEntityGetLinearSleepingThreshold*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetLinearSleepingThreshold".}
proc xEntityGetAngularSleepingThreshold*(entity: Handle): float32 {.X3DDECL, importc: "xEntityGetAngularSleepingThreshold".}
proc xPhysicsRayCast*(fromX: float32, fromY: float32, fromZ: float32, toX: float32, toY: float32, toZ: float32, rcType: int = 0, rayGroup: int = 0) {.X3DDECL, importc: "xPhysicsRayCast".}
proc xPhysicsGetHitEntity*(index: int = 0): Handle {.X3DDECL, importc: "xPhysicsGetHitEntity".}
proc xPhysicsGetHitPointX*(index: int = 0): float32 {.X3DDECL, importc: "xPhysicsGetHitPointX".}
proc xPhysicsGetHitPointY*(index: int = 0): float32 {.X3DDECL, importc: "xPhysicsGetHitPointY".}
proc xPhysicsGetHitPointZ*(index: int = 0): float32 {.X3DDECL, importc: "xPhysicsGetHitPointZ".}
proc xPhysicsGetHitNormalX*(index: int = 0): float32 {.X3DDECL, importc: "xPhysicsGetHitNormalX".}
proc xPhysicsGetHitNormalY*(index: int = 0): float32 {.X3DDECL, importc: "xPhysicsGetHitNormalY".}
proc xPhysicsGetHitNormalZ*(index: int = 0): float32 {.X3DDECL, importc: "xPhysicsGetHitNormalZ".}
proc xPhysicsGetHitDistance*(index: int = 0): float32 {.X3DDECL, importc: "xPhysicsGetHitDistance".}
proc xPhysicsCountHits*(): int {.X3DDECL, importc: "xPhysicsCountHits".}
proc xEntityBodyLocalPosition*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntityBodyLocalPosition".}
proc xEntityBodyLocalRotation*(entity: Handle, pitch: float32, yaw: float32, roll: float32) {.X3DDECL, importc: "xEntityBodyLocalRotation".}
proc xEntityBodyLocalScale*(entity: Handle, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntityBodyLocalScale".}
proc xWorldSetFrequency*(frequency: float32, world: Handle = NULL) {.X3DDECL, importc: "xWorldSetFrequency".}
proc xEntityMakeKinematic*(entity: Handle, state: int) {.X3DDECL, importc: "xEntityMakeKinematic".}
proc xEntityIsKinematic*(entity: Handle): int {.X3DDECL, importc: "xEntityIsKinematic".}
proc xPhysicsDebugRender*(state: int) {.X3DDECL, importc: "xPhysicsDebugRender".}
proc xEntityDisableSimulation*(entity: Handle, state: int) {.X3DDECL, importc: "xEntityDisableSimulation".}
proc xEntityHasBody*(entity: Handle): int {.X3DDECL, importc: "xEntityHasBody".}
proc xEntityCreateVehicle*(chassisEntity: Handle) {.X3DDECL, importc: "xEntityCreateVehicle".}
proc xEntityFreeVehicle*(chassisEntity: Handle) {.X3DDECL, importc: "xEntityFreeVehicle".}
proc xEntityCountWheels*(chassisEntity: Handle): int {.X3DDECL, importc: "xEntityCountWheels".}
proc xEntityAddWheel*(chassisEntity: Handle, wheelEntity: Handle): int {.X3DDECL, importc: "xEntityAddWheel".}
proc xEntityWheelSetRadius*(chassisEntity: Handle, index: int, radius: float32) {.X3DDECL, importc: "xEntityWheelSetRadius".}
proc xEntityWheelSetAxle*(chassisEntity: Handle, index: int, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntityWheelSetAxle".}
proc xEntityWheelSetRay*(chassisEntity: Handle, index: int, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xEntityWheelSetRay".}
proc xEntityWheelSetSuspensionLength*(chassisEntity: Handle, index: int, length: float32) {.X3DDECL, importc: "xEntityWheelSetSuspensionLength".}
proc xEntityWheelSetBrake*(chassisEntity: Handle, index: int, brake: float32) {.X3DDECL, importc: "xEntityWheelSetBrake".}
proc xEntityWheelSetMaxSuspensionForce*(chassisEntity: Handle, index: int, force: float32) {.X3DDECL, importc: "xEntityWheelSetMaxSuspensionForce".}
proc xEntityWheelSetMaxSuspensionTravel*(chassisEntity: Handle, index: int, travel: float32) {.X3DDECL, importc: "xEntityWheelSetMaxSuspensionTravel".}
proc xEntityWheelSetSuspensionStiffness*(chassisEntity: Handle, index: int, stiffness: float32) {.X3DDECL, importc: "xEntityWheelSetSuspensionStiffness".}
proc xEntityWheelSetSuspensionDamping*(chassisEntity: Handle, index: int, damping: float32) {.X3DDECL, importc: "xEntityWheelSetSuspensionDamping".}
proc xEntityWheelSetSuspensionCompression*(chassisEntity: Handle, index: int, compression: float32) {.X3DDECL, importc: "xEntityWheelSetSuspensionCompression".}
proc xEntityWheelSetFriction*(chassisEntity: Handle, index: int, friction: float32) {.X3DDECL, importc: "xEntityWheelSetFriction".}
proc xEntityWheelSetEngineForce*(chassisEntity: Handle, index: int, force: float32) {.X3DDECL, importc: "xEntityWheelSetEngineForce".}
proc xEntityWheelSetRollInfluence*(chassisEntity: Handle, index: int, roll: float32) {.X3DDECL, importc: "xEntityWheelSetRollInfluence".}
proc xEntityWheelSetRotation*(chassisEntity: Handle, index: int, rotation: float32) {.X3DDECL, importc: "xEntityWheelSetRotation".}
proc xEntityWheelSetSteering*(chassisEntity: Handle, index: int, steering: float32) {.X3DDECL, importc: "xEntityWheelSetSteering".}
proc xEntityWheelSetConnectionPoint*(chassisEntity: Handle, index: int, x: float32, y: float32, z: float32, isGlobal: bool = false) {.X3DDECL, importc: "xEntityWheelSetConnectionPoint".}
proc xEntityWheelGetSuspensionLength*(chassisEntity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityWheelGetSuspensionLength".}
proc xEntityWheelGetPitch*(chassisEntity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityWheelGetPitch".}
proc xEntityWheelGetYaw*(chassisEntity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityWheelGetYaw".}
proc xEntityWheelGetRoll*(chassisEntity: Handle, index: int): float32 {.X3DDECL, importc: "xEntityWheelGetRoll".}
proc xEntityWheelGetContactEntity*(chassisEntity: Handle, index: int): Handle {.X3DDECL, importc: "xEntityWheelGetContactEntity".}
# posteffects commands
proc xLoadPostEffect*(path: cstring): Handle {.X3DDECL, importc: "xLoadPostEffect".}
proc xFreePostEffect*(postEffect: Handle) {.X3DDECL, importc: "xFreePostEffect".}
proc xSetPostEffect*(index: int, postEffect: Handle, technique: cstring = "MainTechnique") {.X3DDECL, importc: "xSetPostEffect".}
proc xRenderPostEffects*() {.X3DDECL, importc: "xRenderPostEffects".}
proc xSetPostEffectInt*(postEffect: Handle, name: cstring, value: int) {.X3DDECL, importc: "xSetPostEffectInt".}
proc xSetPostEffectFloat*(postEffect: Handle, name: cstring, value: float32) {.X3DDECL, importc: "xSetPostEffectFloat".}
proc xSetPostEffectBool*(postEffect: Handle, name: cstring, value: bool) {.X3DDECL, importc: "xSetPostEffectBool".}
proc xSetPostEffectVector*(postEffect: Handle, name: cstring, x: float32, y: float32, z: float32, w: float32 = 1.0f) {.X3DDECL, importc: "xSetPostEffectVector".}
proc xSetPostEffectTexture*(postEffect: Handle, name: cstring, texture: Handle, frame: int = 0) {.X3DDECL, importc: "xSetPostEffectTexture".}
proc xDeletePostEffectConstant*(postEffect: Handle, name: cstring) {.X3DDECL, importc: "xDeletePostEffectConstant".}
proc xClearPostEffectConstants*(postEffect: Handle) {.X3DDECL, importc: "xClearPostEffectConstants".}
# psystems commands
proc xCreatePSystem*(pointSprites: bool = false): Handle {.X3DDECL, importc: "xCreatePSystem".}
proc xPSystemType*(psystem: Handle): int {.X3DDECL, importc: "xPSystemType".}
proc xPSystemSetBlend*(psystem: Handle, mode: int) {.X3DDECL, importc: "xPSystemSetBlend".}
proc xPSystemGetBlend*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetBlend".}
proc xPSystemSetMaxParticles*(psystem: Handle, maxNumber: int) {.X3DDECL, importc: "xPSystemSetMaxParticles".}
proc xPSystemGetMaxParticles*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetMaxParticles".}
proc xPSystemSetEmitterLifetime*(psystem: Handle, lifetime: int) {.X3DDECL, importc: "xPSystemSetEmitterLifetime".}
proc xPSystemGetEmitterLifetime*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetEmitterLifetime".}
proc xPSystemSetParticleLifetime*(psystem: Handle, lifetime: int) {.X3DDECL, importc: "xPSystemSetParticleLifetime".}
proc xPSystemGetParticleLifetime*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetParticleLifetime".}
proc xPSystemSetCreationInterval*(psystem: Handle, interval: int) {.X3DDECL, importc: "xPSystemSetCreationInterval".}
proc xPSystemGetCreationInterval*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetCreationInterval".}
proc xPSystemSetCreationFrequency*(psystem: Handle, frequency: int) {.X3DDECL, importc: "xPSystemSetCreationFrequency".}
proc xPSystemGetCreationFrequency*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetCreationFrequency".}
proc xPSystemSetTexture*(psystem: Handle, texture: Handle, frames: int, speed: float32) {.X3DDECL, importc: "xPSystemSetTexture".}
proc xPSystemGetTexture*(psystem: Handle): Handle {.X3DDECL, importc: "xPSystemGetTexture".}
proc xPSystemGetTextureFrames*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetTextureFrames".}
proc xPSystemGetTextureAnimationSpeed*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetTextureAnimationSpeed".}
proc xPSystemSetOffset*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.X3DDECL, importc: "xPSystemSetOffset".}
proc xPSystemGetOffsetMinX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetOffsetMinX".}
proc xPSystemGetOffsetMinY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetOffsetMinY".}
proc xPSystemGetOffsetMinZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetOffsetMinZ".}
proc xPSystemGetOffsetMaxX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetOffsetMaxX".}
proc xPSystemGetOffsetMaxY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetOffsetMaxY".}
proc xPSystemGetOffsetMaxZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetOffsetMaxZ".}
proc xPSystemSetVelocity*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.X3DDECL, importc: "xPSystemSetVelocity".}
proc xPSystemGetVelocityMinX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetVelocityMinX".}
proc xPSystemGetVelocityMinY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetVelocityMinY".}
proc xPSystemGetVelocityMinZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetVelocityMinZ".}
proc xPSystemGetVelocityMaxX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetVelocityMaxX".}
proc xPSystemGetVelocityMaxY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetVelocityMaxY".}
proc xPSystemGetVelocityMaxZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetVelocityMaxZ".}
proc xPSystemEnableFixedQuads*(psystem: Handle, state: bool) {.X3DDECL, importc: "xPSystemEnableFixedQuads".}
proc xPSystemFixedQuadsUsed*(psystem: Handle): int {.X3DDECL, importc: "xPSystemFixedQuadsUsed".}
proc xPSystemSetTorque*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.X3DDECL, importc: "xPSystemSetTorque".}
proc xPSystemGetTorqueMinX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetTorqueMinX".}
proc xPSystemGetTorqueMinY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetTorqueMinY".}
proc xPSystemGetTorqueMinZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetTorqueMinZ".}
proc xPSystemGetTorqueMaxX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetTorqueMaxX".}
proc xPSystemGetTorqueMaxY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetTorqueMaxY".}
proc xPSystemGetTorqueMaxZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetTorqueMaxZ".}
proc xPSystemSetGravity*(psystem: Handle, gravity: float32) {.X3DDECL, importc: "xPSystemSetGravity".}
proc xPSystemGetGravity*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetGravity".}
proc xPSystemSetAlpha*(psystem: Handle, alpha: float32) {.X3DDECL, importc: "xPSystemSetAlpha".}
proc xPSystemGetAlpha*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetAlpha".}
proc xPSystemSetFadeSpeed*(psystem: Handle, speed: float32) {.X3DDECL, importc: "xPSystemSetFadeSpeed".}
proc xPSystemGetFadeSpeed*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetFadeSpeed".}
proc xPSystemSetParticleSize*(psystem: Handle, minx: float32, miny: float32, maxx: float32, maxy: float32) {.X3DDECL, importc: "xPSystemSetParticleSize".}
proc xPSystemGetSizeMinX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetSizeMinX".}
proc xPSystemGetSizeMinY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetSizeMinY".}
proc xPSystemGetSizeMaxX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetSizeMaxX".}
proc xPSystemGetSizeMaxY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetSizeMaxY".}
proc xPSystemSetScaleSpeed*(psystem: Handle, minx: float32, miny: float32, maxx: float32, maxy: float32) {.X3DDECL, importc: "xPSystemSetScaleSpeed".}
proc xPSystemGetScaleSpeedMinX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetScaleSpeedMinX".}
proc xPSystemGetScaleSpeedMinY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetScaleSpeedMinY".}
proc xPSystemGetScaleSpeedMaxX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetScaleSpeedMaxX".}
proc xPSystemGetScaleSpeedMaxY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetScaleSpeedMaxY".}
proc xPSystemSetAngles*(psystem: Handle, minx: float32, miny: float32, minz: float32, maxx: float32, maxy: float32, maxz: float32) {.X3DDECL, importc: "xPSystemSetAngles".}
proc xPSystemGetAnglesMinX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetAnglesMinX".}
proc xPSystemGetAnglesMinY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetAnglesMinY".}
proc xPSystemGetAnglesMinZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetAnglesMinZ".}
proc xPSystemGetAnglesMaxX*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetAnglesMaxX".}
proc xPSystemGetAnglesMaxY*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetAnglesMaxY".}
proc xPSystemGetAnglesMaxZ*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetAnglesMaxZ".}
proc xPSystemSetColorMode*(psystem: Handle, mode: int) {.X3DDECL, importc: "xPSystemSetColorMode".}
proc xPSystemGetColorMode*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetColorMode".}
proc xPSystemSetColors*(psystem: Handle, sred: float32, sgreen: float32, sblue: float32, ered: float32, egreen: float32, eblue: float32) {.X3DDECL, importc: "xPSystemSetColors".}
proc xPSystemGetBeginColorRed*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetBeginColorRed".}
proc xPSystemGetBeginColorGreen*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetBeginColorGreen".}
proc xPSystemGetBeginColorBlue*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetBeginColorBlue".}
proc xPSystemGetEndColorRed*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetEndColorRed".}
proc xPSystemGetEndColorGreen*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetEndColorGreen".}
proc xPSystemGetEndColorBlue*(psystem: Handle): float32 {.X3DDECL, importc: "xPSystemGetEndColorBlue".}
proc xFreePSystem*(psystem: Handle) {.X3DDECL, importc: "xFreePSystem".}
proc xPSystemSetParticleParenting*(psystem: Handle, mode: bool) {.X3DDECL, importc: "xPSystemSetParticleParenting".}
proc xPSystemGetParticleParenting*(psystem: Handle): int {.X3DDECL, importc: "xPSystemGetParticleParenting".}
# raypicks commands
proc xLinePick*(x: float32, y: float32, z: float32, dx: float32, dy: float32, dz: float32, distance: float32 = 0.0f): Handle {.X3DDECL, importc: "xLinePick".}
proc xEntityPick*(entity: Handle, range: float32 = 0.0f): Handle {.X3DDECL, importc: "xEntityPick".}
proc xCameraPick*(camera: Handle, x: int, y: int): Handle {.X3DDECL, importc: "xCameraPick".}
proc xPickedNX*(): float32 {.X3DDECL, importc: "xPickedNX".}
proc xPickedNY*(): float32 {.X3DDECL, importc: "xPickedNY".}
proc xPickedNZ*(): float32 {.X3DDECL, importc: "xPickedNZ".}
proc xPickedX*(): float32 {.X3DDECL, importc: "xPickedX".}
proc xPickedY*(): float32 {.X3DDECL, importc: "xPickedY".}
proc xPickedZ*(): float32 {.X3DDECL, importc: "xPickedZ".}
proc xPickedEntity*(): Handle {.X3DDECL, importc: "xPickedEntity".}
proc xPickedSurface*(): Handle {.X3DDECL, importc: "xPickedSurface".}
proc xPickedTriangle*(): int {.X3DDECL, importc: "xPickedTriangle".}
proc xPickedTime*(): int {.X3DDECL, importc: "xPickedTime".}
# shadows commands
proc xSetShadowsBlur*(blurLevel: int) {.X3DDECL, importc: "xSetShadowsBlur".}
proc xSetShadowShader*(path: cstring) {.X3DDECL, importc: "xSetShadowShader".}
proc xInitShadows*(dirSize: int, spotSize: int, pointSize: int): Handle {.X3DDECL, importc: "xInitShadows".}
proc xSetShadowParams*(splitPlanes: int = 4, splitLambda: float32 = 0.95f, useOrtho: bool = true, lightDist: float32 = 300.0f) {.X3DDECL, importc: "xSetShadowParams".}
proc xRenderShadows*(mainCamera: Handle, texture: Handle) {.X3DDECL, importc: "xRenderShadows".}
proc xShadowPriority*(priority: int) {.X3DDECL, importc: "xShadowPriority".}
proc xCameraDisableShadows*(camera: Handle) {.X3DDECL, importc: "xCameraDisableShadows".}
proc xCameraEnableShadows*(camera: Handle) {.X3DDECL, importc: "xCameraEnableShadows".}
proc xEntityCastShadows*(entity: Handle, light: Handle, state: bool) {.X3DDECL, importc: "xEntityCastShadows".}
proc xEntityReceiveShadows*(entity: Handle, light: Handle, state: bool) {.X3DDECL, importc: "xEntityReceiveShadows".}
proc xEntityIsCaster*(entity: Handle, light: Handle): int {.X3DDECL, importc: "xEntityIsCaster".}
proc xEntityIsReceiver*(entity: Handle, light: Handle): int {.X3DDECL, importc: "xEntityIsReceiver".}
# sounds commands
proc xLoadSound*(path: cstring): Handle {.X3DDECL, importc: "xLoadSound".}
proc xLoad3DSound*(path: cstring): Handle {.X3DDECL, importc: "xLoad3DSound".}
proc xFreeSound*(sound: Handle) {.X3DDECL, importc: "xFreeSound".}
proc xLoopSound*(sound: Handle) {.X3DDECL, importc: "xLoopSound".}
proc xSoundPitch*(sound: Handle, pitch: int) {.X3DDECL, importc: "xSoundPitch".}
proc xSoundVolume*(sound: Handle, volume: float32) {.X3DDECL, importc: "xSoundVolume".}
proc xSoundPan*(sound: Handle, pan: float32) {.X3DDECL, importc: "xSoundPan".}
proc xPlaySound*(sound: Handle): int {.X3DDECL, importc: "xPlaySound".}
proc xStopChannel*(channel: int) {.X3DDECL, importc: "xStopChannel".}
proc xPauseChannel*(channel: int) {.X3DDECL, importc: "xPauseChannel".}
proc xResumeChannel*(channel: int) {.X3DDECL, importc: "xResumeChannel".}
proc xPlayMusic*(path: cstring): int {.X3DDECL, importc: "xPlayMusic".}
proc xChannelPitch*(channel: int, pitch: int) {.X3DDECL, importc: "xChannelPitch".}
proc xChannelVolume*(channel: int, volume: float32) {.X3DDECL, importc: "xChannelVolume".}
proc xChannelPan*(channel: int, pan: float32) {.X3DDECL, importc: "xChannelPan".}
proc xChannelPlaying*(channel: int): int {.X3DDECL, importc: "xChannelPlaying".}
proc xEmitSound*(sound: Handle, entity: Handle): int {.X3DDECL, importc: "xEmitSound".}
proc xCreateListener*(parent: Handle = NULL, roFactor: float32 = 1.0f, doplerFactor: float32 = 1.0f, distFactor: float32 = 1.0f): Handle {.X3DDECL, importc: "xCreateListener".}
proc xGetListener*(): Handle {.X3DDECL, importc: "xGetListener".}
proc xInitalizeSound*(): int {.X3DDECL, importc: "xInitalizeSound".}
# sprites commands
proc xCreateSprite*(parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateSprite".}
proc xSpriteViewMode*(sprite: Handle, mode: int) {.X3DDECL, importc: "xSpriteViewMode".}
proc xHandleSprite*(sprite: Handle, x: float32, y: float32) {.X3DDECL, importc: "xHandleSprite".}
proc xLoadSprite*(path: cstring, flags: int = 9, parent: Handle = NULL): Handle {.X3DDECL, importc: "xLoadSprite".}
proc xRotateSprite*(sprite: Handle, angle: float32) {.X3DDECL, importc: "xRotateSprite".}
proc xScaleSprite*(sprite: Handle, xScale: float32, yScale: float32) {.X3DDECL, importc: "xScaleSprite".}
# surfaces commands
proc xCreateSurface*(entity: Handle, brush: Handle = NULL, dynamic: bool = false): Handle {.X3DDECL, importc: "xCreateSurface".}
proc xGetSurfaceBrush*(surface: Handle): Handle {.X3DDECL, importc: "xGetSurfaceBrush".}
proc xAddVertex*(surface: Handle, x: float32, y: float32, z: float32, u: float32 = 0.0f, v: float32 = 0.0f, w: float32 = 0.0f): int {.X3DDECL, importc: "xAddVertex".}
proc xAddTriangle*(surface: Handle, v0: int, v1: int, v2: int): int {.X3DDECL, importc: "xAddTriangle".}
proc xSetSurfaceFrustumSphere*(surface: Handle, x: float32, y: float32, z: float32, radii: float32) {.X3DDECL, importc: "xSetSurfaceFrustumSphere".}
proc xVertexCoords*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xVertexCoords".}
proc xVertexNormal*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xVertexNormal".}
proc xVertexTangent*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xVertexTangent".}
proc xVertexBinormal*(surface: Handle, vertex: int, x: float32, y: float32, z: float32) {.X3DDECL, importc: "xVertexBinormal".}
proc xVertexColor*(surface: Handle, vertex: int, red: int, green: int, blue: int, alpha: float32 = 1.0f) {.X3DDECL, importc: "xVertexColor".}
proc xVertexTexCoords*(surface: Handle, vertex: int, u: float32, v: float32, w: float32 = 1.0f, textureSet: int = 0) {.X3DDECL, importc: "xVertexTexCoords".}
proc xCountVertices*(surface: Handle): int {.X3DDECL, importc: "xCountVertices".}
proc xVertexX*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexX".}
proc xVertexY*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexY".}
proc xVertexZ*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexZ".}
proc xVertexNX*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexNX".}
proc xVertexNY*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexNY".}
proc xVertexNZ*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexNZ".}
proc xVertexTX*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexTX".}
proc xVertexTY*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexTY".}
proc xVertexTZ*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexTZ".}
proc xVertexBX*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexBX".}
proc xVertexBY*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexBY".}
proc xVertexBZ*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexBZ".}
proc xVertexU*(surface: Handle, vertex: int, textureSet: int = 0): float32 {.X3DDECL, importc: "xVertexU".}
proc xVertexV*(surface: Handle, vertex: int, textureSet: int = 0): float32 {.X3DDECL, importc: "xVertexV".}
proc xVertexW*(surface: Handle, vertex: int, textureSet: int = 0): float32 {.X3DDECL, importc: "xVertexW".}
proc xVertexRed*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexRed".}
proc xVertexGreen*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexGreen".}
proc xVertexBlue*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexBlue".}
proc xVertexAlpha*(surface: Handle, vertex: int): float32 {.X3DDECL, importc: "xVertexAlpha".}
proc xTriangleVertex*(surface: Handle, triangle: int, corner: int): int {.X3DDECL, importc: "xTriangleVertex".}
proc xCountTriangles*(surface: Handle): int {.X3DDECL, importc: "xCountTriangles".}
proc xPaintSurface*(surface: Handle, brush: Handle) {.X3DDECL, importc: "xPaintSurface".}
proc xClearSurface*(surface: Handle, vertices: bool = true, triangles: bool = true) {.X3DDECL, importc: "xClearSurface".}
proc xGetSurfaceTexture*(surface: Handle, index: int = 0): Handle {.X3DDECL, importc: "xGetSurfaceTexture".}
proc xFreeSurface*(surface: Handle) {.X3DDECL, importc: "xFreeSurface".}
proc xSurfacePrimitiveType*(surface: Handle, ptype: int) {.X3DDECL, importc: "xSurfacePrimitiveType".}
proc xSurfaceTexture*(surface: Handle, texture: Handle, frame: int, index: int) {.X3DDECL, importc: "xSurfaceTexture".}
proc xSurfaceColor*(surface: Handle, red: int, green: int, blue: int) {.X3DDECL, importc: "xSurfaceColor".}
proc xSurfaceAlpha*(surface: Handle, alpha: float32) {.X3DDECL, importc: "xSurfaceAlpha".}
proc xSurfaceShininess*(surface: Handle, shininess: float32) {.X3DDECL, importc: "xSurfaceShininess".}
proc xSurfaceBlend*(surface: Handle, blendMode: int) {.X3DDECL, importc: "xSurfaceBlend".}
proc xSurfaceFX*(surface: Handle, fxFlags: int) {.X3DDECL, importc: "xSurfaceFX".}
proc xSurfaceAlphaRef*(surface: Handle, alphaRef: int) {.X3DDECL, importc: "xSurfaceAlphaRef".}
proc xSurfaceAlphaFunc*(surface: Handle, alphaFunc: int) {.X3DDECL, importc: "xSurfaceAlphaFunc".}
# sysinfos commands
proc xCPUName*(): cstring {.X3DDECL, importc: "xCPUName".}
proc xCPUVendor*(): cstring {.X3DDECL, importc: "xCPUVendor".}
proc xCPUFamily*(): int {.X3DDECL, importc: "xCPUFamily".}
proc xCPUModel*(): int {.X3DDECL, importc: "xCPUModel".}
proc xCPUStepping*(): int {.X3DDECL, importc: "xCPUStepping".}
proc xCPUSpeed*(): int {.X3DDECL, importc: "xCPUSpeed".}
proc xVideoInfo*(): cstring {.X3DDECL, importc: "xVideoInfo".}
proc xVideoAspectRatio*(): float32 {.X3DDECL, importc: "xVideoAspectRatio".}
proc xVideoAspectRatioStr*(): cstring {.X3DDECL, importc: "xVideoAspectRatioStr".}
proc xGetTotalPhysMem*(): float32 {.X3DDECL, importc: "xGetTotalPhysMem".}
proc xGetAvailPhysMem*(): float32 {.X3DDECL, importc: "xGetAvailPhysMem".}
proc xGetTotalPageMem*(): float32 {.X3DDECL, importc: "xGetTotalPageMem".}
proc xGetAvailPageMem*(): float32 {.X3DDECL, importc: "xGetAvailPageMem".}
proc xGetTotalVidMem*(): float32 {.X3DDECL, importc: "xGetTotalVidMem".}
proc xGetAvailVidMem*(): float32 {.X3DDECL, importc: "xGetAvailVidMem".}
proc xGetTotalVidLocalMem*(): float32 {.X3DDECL, importc: "xGetTotalVidLocalMem".}
proc xGetAvailVidLocalMem*(): float32 {.X3DDECL, importc: "xGetAvailVidLocalMem".}
proc xGetTotalVidNonlocalMem*(): float32 {.X3DDECL, importc: "xGetTotalVidNonlocalMem".}
proc xGetAvailVidNonlocalMem*(): float32 {.X3DDECL, importc: "xGetAvailVidNonlocalMem".}
proc xGetXors3dVersion*(): cstring {.X3DDECL, importc: "xGetXors3dVersion".}
proc xGetXors3dMajorVersion*(): int {.X3DDECL, importc: "xGetXors3dMajorVersion".}
proc xGetXors3dMinorVersion*(): int {.X3DDECL, importc: "xGetXors3dMinorVersion".}
proc xGetXors3dRevision*(): int {.X3DDECL, importc: "xGetXors3dRevision".}
# terrains commands
proc xLoadTerrain*(path: cstring, parent: Handle = NULL): Handle {.X3DDECL, importc: "xLoadTerrain".}
proc xCreateTerrain*(size: int, parent: Handle = NULL): Handle {.X3DDECL, importc: "xCreateTerrain".}
proc xTerrainShading*(terrain: Handle, state: bool = false) {.X3DDECL, importc: "xTerrainShading".}
proc xTerrainHeight*(terrain: Handle, x: int, y: int): float32 {.X3DDECL, importc: "xTerrainHeight".}
proc xTerrainSize*(terrain: Handle): int {.X3DDECL, importc: "xTerrainSize".}
proc xTerrainX*(terrain: Handle, x: float32, y: float32, z: float32): float32 {.X3DDECL, importc: "xTerrainX".}
proc xTerrainY*(terrain: Handle, x: float32, y: float32, z: float32): float32 {.X3DDECL, importc: "xTerrainY".}
proc xTerrainZ*(terrain: Handle, x: float32, y: float32, z: float32): float32 {.X3DDECL, importc: "xTerrainZ".}
proc xModifyTerrain*(terrain: Handle, x: int, y: int, height: float32, realtime: bool = false) {.X3DDECL, importc: "xModifyTerrain".}
proc xTerrainDetail*(terrain: Handle, detail: int) {.X3DDECL, importc: "xTerrainDetail".}
proc xTerrainSplatting*(terrain: Handle, state: bool) {.X3DDECL, importc: "xTerrainSplatting".}
proc xLoadTerrainTexture*(path: cstring): Handle {.X3DDECL, importc: "xLoadTerrainTexture".}
proc xFreeTerrainTexture*(texture: Handle) {.X3DDECL, importc: "xFreeTerrainTexture".}
proc xTerrainTextureLightmap*(texture: Handle, state: bool) {.X3DDECL, importc: "xTerrainTextureLightmap".}
proc xTerrainTexture*(terrain: Handle, texture: Handle) {.X3DDECL, importc: "xTerrainTexture".}
proc xTerrainViewZone*(terrain: Handle, viewZone: int, texturingZone: int = -1) {.X3DDECL, importc: "xTerrainViewZone".}
proc xTerrainLODs*(lodsCount: int) {.X3DDECL, importc: "xTerrainLODs".}
# textures commands
proc xTextureWidth*(texture: Handle): int {.X3DDECL, importc: "xTextureWidth".}
proc xTextureHeight*(texture: Handle): int {.X3DDECL, importc: "xTextureHeight".}
proc xCreateTexture*(width: int, height: int, flags: int = 9, frames: int = 1): Handle {.X3DDECL, importc: "xCreateTexture".}
proc xFreeTexture*(texture: Handle) {.X3DDECL, importc: "xFreeTexture".}
proc xSetTextureFilter*(texture: Handle, mode: int) {.X3DDECL, importc: "xSetTextureFilter".}
proc xTextureBlend*(texture: Handle, blend: int) {.X3DDECL, importc: "xTextureBlend".}
proc xTextureCoords*(texture: Handle, coords: int) {.X3DDECL, importc: "xTextureCoords".}
proc xTextureFilter*(matchText: cstring, flags: int) {.X3DDECL, importc: "xTextureFilter".}
proc xClearTextureFilters*() {.X3DDECL, importc: "xClearTextureFilters".}
proc xLoadTexture*(path: cstring, flags: int = 9): Handle {.X3DDECL, importc: "xLoadTexture".}
proc xTextureName*(texture: Handle): cstring {.X3DDECL, importc: "xTextureName".}
proc xPositionTexture*(texture: Handle, x: float32, y: float32) {.X3DDECL, importc: "xPositionTexture".}
proc xScaleTexture*(texture: Handle, x: float32, y: float32) {.X3DDECL, importc: "xScaleTexture".}
proc xRotateTexture*(texture: Handle, angle: float32) {.X3DDECL, importc: "xRotateTexture".}
proc xLoadAnimTexture*(path: cstring, flags: int, width: int, height: int, startFrame: int, frames: int): Handle {.X3DDECL, importc: "xLoadAnimTexture".}
proc xCreateTextureFromData*(pixelsData: Handle, width: int, height: int, flags: int = 9, frames: int = 1): Handle {.X3DDECL, importc: "xCreateTextureFromData".}
proc xGetTextureData*(texture: Handle, frame: int = 0): Handle {.X3DDECL, importc: "xGetTextureData".}
proc xGetTextureDataPitch*(texture: Handle, frame: int = 0): int {.X3DDECL, importc: "xGetTextureDataPitch".}
proc xGetTextureSurface*(texture: Handle, frame: int = 0): Handle {.X3DDECL, importc: "xGetTextureSurface".}
proc xGetTextureFrames*(texture: Handle): int {.X3DDECL, importc: "xGetTextureFrames".}
proc xSetCubeFace*(texture: Handle, face: int) {.X3DDECL, importc: "xSetCubeFace".}
proc xSetCubeMode*(texture: Handle, mode: int) {.X3DDECL, importc: "xSetCubeMode".}
proc xGetTextureBlend*(texture: Handle): int {.X3DDECL, importc: "xGetTextureBlend".}
proc xGetTextureX*(texture: Handle): float32 {.X3DDECL, importc: "xGetTextureX".}
proc xGetTextureY*(texture: Handle): float32 {.X3DDECL, importc: "xGetTextureY".}
proc xGetTextureScaleX*(texture: Handle): float32 {.X3DDECL, importc: "xGetTextureScaleX".}
proc xGetTextureScaleY*(texture: Handle): float32 {.X3DDECL, importc: "xGetTextureScaleY".}
proc xGetTextureAngle*(texture: Handle): float32 {.X3DDECL, importc: "xGetTextureAngle".}
proc xGetTextureCoords*(texture: Handle): int {.X3DDECL, importc: "xGetTextureCoords".}
proc xGetCubeFace*(texture: Handle): int {.X3DDECL, importc: "xGetCubeFace".}
proc xGetCubeMode*(texture: Handle): int {.X3DDECL, importc: "xGetCubeMode".}
proc xGetTextureFlags*(texture: Handle): int {.X3DDECL, importc: "xGetTextureFlags".}
proc xSetTextureFlags*(texture: Handle, flags: int) {.X3DDECL, importc: "xSetTextureFlags".}
proc xTextureCounter*(texture: Handle): int {.X3DDECL, importc: "xTextureCounter".}
# transforms commands
proc xVectorPitch*(x: float32, y: float32, z: float32): float32 {.X3DDECL, importc: "xVectorPitch".}
proc xVectorYaw*(x: float32, y: float32, z: float32): float32 {.X3DDECL, importc: "xVectorYaw".}
proc xDeltaPitch*(entity1: Handle, entity2: Handle): float32 {.X3DDECL, importc: "xDeltaPitch".}
proc xDeltaYaw*(entity1: Handle, entity2: Handle): float32 {.X3DDECL, importc: "xDeltaYaw".}
proc xTFormedX*(): float32 {.X3DDECL, importc: "xTFormedX".}
proc xTFormedY*(): float32 {.X3DDECL, importc: "xTFormedY".}
proc xTFormedZ*(): float32 {.X3DDECL, importc: "xTFormedZ".}
proc xTFormPoint*(x: float32, y: float32, z: float32, source: Handle, destination: Handle) {.X3DDECL, importc: "xTFormPoint".}
proc xTFormVector*(x: float32, y: float32, z: float32, source: Handle, destination: Handle) {.X3DDECL, importc: "xTFormVector".}
proc xTFormNormal*(x: float32, y: float32, z: float32, source: Handle, destination: Handle) {.X3DDECL, importc: "xTFormNormal".}
# videos commands
proc xOpenMovie*(path: cstring): Handle {.X3DDECL, importc: "xOpenMovie".}
proc xCloseMovie*(video: Handle) {.X3DDECL, importc: "xCloseMovie".}
proc xDrawMovie*(video: Handle, x: int = 0, y: int = 0, width: int = -1, height: int = -1) {.X3DDECL, importc: "xDrawMovie".}
proc xMovieWidth*(video: Handle): int {.X3DDECL, importc: "xMovieWidth".}
proc xMovieHeight*(video: Handle): int {.X3DDECL, importc: "xMovieHeight".}
proc xMoviePlaying*(video: Handle): int {.X3DDECL, importc: "xMoviePlaying".}
proc xMovieSeek*(video: Handle, time: float32, relative: bool = false) {.X3DDECL, importc: "xMovieSeek".}
proc xMovieLength*(video: Handle): float32 {.X3DDECL, importc: "xMovieLength".}
proc xMovieCurrentTime*(video: Handle): float32 {.X3DDECL, importc: "xMovieCurrentTime".}
proc xMoviePause*(video: Handle) {.X3DDECL, importc: "xMoviePause".}
proc xMovieResume*(video: Handle) {.X3DDECL, importc: "xMovieResume".}
proc xMovieTexture*(video: Handle): Handle {.X3DDECL, importc: "xMovieTexture".}
# worlds commands
proc xCreateWorld*(): Handle {.X3DDECL, importc: "xCreateWorld".}
proc xSetActiveWorld*(world: Handle) {.X3DDECL, importc: "xSetActiveWorld".}
proc xGetActiveWorld*(): Handle {.X3DDECL, importc: "xGetActiveWorld".}
proc xGetDefaultWorld*(): Handle {.X3DDECL, importc: "xGetDefaultWorld".}
proc xDeleteWorld*(world: Handle) {.X3DDECL, importc: "xDeleteWorld".}
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