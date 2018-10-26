# Thinkpad-T460p-OSX-EFI
* Hackintosh OSX EFI
* T460p i7-6820HQ HD530 16G-DDR4 2k-Screen Sata3-SSD-128G DELL-DW1560
* currently on macOS (Version 10.13)
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
| 有线网卡        | √      | Intel I219LM2      |
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


## X86PlatformPlugin:

> 通常，我们可以通过勾选config的"PlusinType"加载X86，来实现更完整的节能选选项，勾选后：
``` bash
  ~ kextstat| grep -i x86
  142    1 0xffffff7f837f3000 0x17000    0x17000    com.apple.driver.X86PlatformPlugin (1.0.0) 75F8D5F2-9BB7-3709-987C-35B5C1FCB727 <117 64 22 13 11 7 6 5 4 3 1>
  146    1 0xffffff7f8380a000 0x7000     0x7000     com.apple.driver.X86PlatformShim (1.0.0) 78933162-E3FE-3568-B4E0-6A6BD9DEA64A <142 117 13 7 4 3>

节能：
- 电池：
- 电源：
```
