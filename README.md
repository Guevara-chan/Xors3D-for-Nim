## •Sum• [![nimble](https://raw.githubusercontent.com/yglukhov/nimble-tag/master/nimble.png)](https://github.com/yglukhov/nimble-tag)
**Xors3D** is an abandoned 3D graphics engine, easily accessible from almost any programming language through transparent procedural interface. It was initially developed by XorsTeam in attempt of bringing DirectX9 functionality into Blitz3D. Discounted since 2012.

**Xors3D for Nim** is one of aftermath wrappers, reconstructed directly from C++ headers to return Xors' legacy into present.  
Just `import xors3d` to hook it up with stuff from `DLL` folder present in .exe workdir - maximum transparency, Nim style.
**Installation:** run `nimble install xors3d` in terminal.  

## •Featuræ•
+ *Some* of 69 original Xors3D samples, translated from [PureBasic wrapper](https://github.com/Guevara-chan/Xors3D-for-PB) to Nim.  
+ Latest salvageable engine revision: *1.15.750.0*  
+ Dynamical prototype-based bindings.  
+ XCopy-based installation.  

## •Remark•
**↯** *If you receive "SIGSEGV: Illegal storage access" error right at first call of any procedure from Xors3D.dll...*  
...Well, it happens. Unfortunalely, Xors3D is an extremely picky engine, so even users of modern Windows distributives may still encounter problems with DirectX9 version mismatch. To fix it, try installing latest package from Microsoft site: [June 2010](https://www.microsoft.com/en-us/download/details.aspx?id=8109)

## •Breakdown•
**Graphix:** DirectX: 9.0c (*d3dx9_36.dll+* required)  
**Physix:** integrated (*xPhysics v1.15.750.0*)  
**Audio:** Squall sound system (version unknown)  

## •Sample imaging•
![Holoscreen.pb](https://cloud.githubusercontent.com/assets/8768470/5170756/5bfa2868-7423-11e4-9d50-e0667a39be04.png)
---
![Blocks.pb](https://cloud.githubusercontent.com/assets/8768470/5170757/5c08d75a-7423-11e4-8def-c6df8bc6f156.png)
