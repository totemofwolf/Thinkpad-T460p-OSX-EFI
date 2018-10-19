# Thinkpad-T460p-OSX-EFI
* Hackintosh OSX EFI
* Dell-Precision-5510 i7-6820HQ HD530 16G-DDR4 4k-Screen Sata3-SSD-512G (and Samsung SSD 960 EVO 500GB) DELL-DW1560  
* currently on macOS Mojave (Version 10.14)
* This repo is based on : [scottsanett repo](https://github.com/scottsanett/M5510-4K-High-Sierra-Installation)   

## 🍺 Working:

| *项目*        | *工作与否*    |  *备注*  |
| --------   | -----:   | :----: |
| CPU变频        | √      |   i7-6820HQ,0x191b0000    |
| SMBios        | √      |   MBP13,3    |
| 🔊声卡        | √      |   ALC-293    |
| 显卡        | √      |   Intel HD530 @2k  |
| HDMI        | √      |  工作但不支持热拔插   |
| miniDP        | √      |  工作正常   |
| 有线网卡        | √      |       |
| WiFi        | √      |   BCM-93452z    |
| 蓝牙        | √      |       |
| 📹摄像头        | √      |       |
| USB-3.0        | √      |       |
| 🔋电池        | √      |       |
| 亮度快捷键        | √      |   F5,F6    |
| 声音快捷键        | √      |   F2,F3    |
 | 触摸板        | √      | 三指手势      |
| HIDPI        | √      |  2560x1440     |
| 睡眠💤唤醒        | √      |  🔌电源键     |

## HDMI && miniDP
Inorder for hdmi to be able to output, you should add

``` bash
				<key>Mac-A5C67F76ED83108C</key>
				<string>none</string>
```

under `ConfigMap->dict` in `/System/Library/Extensions/AppleGraphicsControl.kext/Contents/PlugIns/AppleGraphicsDevicePolicy.kext/Contents/Info.plist`  
and rebuild kext cache using : `sudo kextcache -i /`
