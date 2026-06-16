
msiexec /a "DRIVER>msi" /qb TARGETDIR=""



import these (.inf files) from SurfaceLaptop7IntelDrivers to boot package
they package to boot image

msu53cx22x64sta.INF	Net	Surface Dock 1 Ethernet
msu56cx22x64sta.INF	Net	Surface Dock 2 Ethernet
SurfaceSerialHubDriver.inf	System	Primary Surface input pathing
surface_hid_mini.inf	HIDClass	Surface Keyboard/Mouse abstraction
IntelQuickSPI.inf	HIDClass	SPI Bus connection for input components
iaLPSS2_GPIO2_LNL.inf	System	Intel Serial IO GPIO control
iaLPSS2_I2C_LNL.inf	System	Intel Serial IO I2C bus control