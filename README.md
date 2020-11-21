# Thinkpad-T460p-OSX-EFI

## 20201121 更新

``` bash
- *) upgrade README.md for macOS Catalina support
```

## 20200330 更新

``` bash
- *) upgrade to AirportBrcmFixup-2.0.6.kext
- *) upgrade to AppleALC-1.4.6.kext
- *) upgrade to Lilu-1.4.1.kext
- *) upgrade to NoTouchID-1.0.3.kext
- *) upgrade to WhateverGreen-1.3.6.kext
```

## 20190908 更新

``` bash
- *) upgrade to AirportBrcmFixup-2.0.3.kext
- *) upgrade to AppleALC-1.4.1.kext
- *) upgrade to CPUFriend-1.1.9.kext
- *) upgrade to DisplayEDID-30e4-49a.kext
- *) upgrade to Lilu-1.3.8.kext
- *) upgrade to NoTouchID-1.0.2.kext
- *) upgrade to VoodooPS2Controller-2.0.3.kext
- *) upgrade to WhateverGreen-1.3.2.kext
- *) fix sleep issue
```

## 20190522 更新

* add support for 10.14.6

``` bash
# for macOS Catalina 10.14.6 user, use default branch:
git clone https://github.com/totemofwolf/Thinkpad-T460p-OSX-EFI.git
cd Thinkpad-T460p-OSX-EFI
git checkout master

# for 10.13.6 user, use:
git clone -b 10.13.6 https://github.com/totemofwolf/Thinkpad-T460p-OSX-EFI.git
cd Thinkpad-T460p-OSX-EFI
git checkout 10.13.6
```

---

* Hackintosh OSX EFI
* T460p i7-6820HQ | HD530 | 16G-DDR4 2133 | 2k-Screen | Sata3-SSD-500G | BCM94352z
* currently on macOS (Version 10.13.6)
* This repo is based on : [soulomoon/Dell-Precision-5510-High-Sierra](https://github.com/soulomoon/Dell-Precision-5510-High-Sierra) && [corenel/XPS9550-macOS](https://github.com/corenel/XPS9550-macOS)

## 🍺 Working:

| *项目*        | *工作与否*    |  *备注*  |
| --------   | -----:   | :----: |
| CPU变频        | √      |   14档, i7-6820HQ, 0x191b0000 |
| SMBios        | √      |   MBP13,3    |
| 🔊声卡        | √      |   ALC-293    |
| 显卡        | √      |   Intel HD530 @2k  |
| HDMI        | √      |  工作但不支持热拔插   |
| miniDP        | √      |  工作正常   |
| 有线网卡        | √      | Intel I219LM2      |
| WiFi        | √      |   BCM-94352z    |
| 蓝牙        | √      |       |
| 📹摄像头        | √      |       |
| USB-3.0        | √      |   速度：	最大 5 Gb/秒 |
| 🔋电池        | √      |       |
| 亮度快捷键       | √      |   F5,F6(Fn)    |
| 声音快捷键        | √      |   F2,F3    |
| 触摸板        | √      | 三指手势      |
| HIDPI        | √      |  2560x1440     |
| 睡眠💤唤醒        | √      |  🔌电源键     |
| 盒盖睡眠💤唤醒        | √      |       |

## 我的目前工作系统是10.13，没折腾最新的

> 安装时将ig-platform-id改为0x12345678（必须改，空着也不行！）并且设置啰嗦启动(-v)模式进入安装，另外可能还需要设置

``` bash
<key>Intel</key>
<true/>
```

参考：
[10.12和10.13的核显framebuffer五国问题解决方案汇总](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1696023)


## HDMI && miniDP support
Inorder for hdmi to be able to output, you should add

``` bash
				<key>Mac-A5C67F76ED83108C</key>
				<string>none</string>
```

under `ConfigMap->dict` in `/System/Library/Extensions/AppleGraphicsControl.kext/Contents/PlugIns/AppleGraphicsDevicePolicy.kext/Contents/Info.plist`  
and rebuild kext cache using : `sudo kextcache -i /`

### 一个更妙的办法（不用担心每次安全更新后失效）

使用 [corenel/XPS9550-macOS repo](https://github.com/corenel/XPS9550-macOS/tree/master/Kexts) 目录里的`AppleGraphicsDevicePolicyInjector.kext`放入/Library/Extensions，重建缓存。

## 变频

使用 [corenel/XPS9550-macOS repo](https://github.com/corenel/XPS9550-macOS/tree/master/Kexts) 目录里的
`X86PlatformPluginInjector.kext`放入/Library/Extensions，重建缓存。因为我的CPU是原生型号，其实不用搞这些花里胡哨的“优化”变频也很棒。
也可以使用如下原理类似的命令来实现完美HWP：

`➜ cd /tmp && curl -s https://raw.githubusercontent.com/Piker-Alpha/freqVectorsEdit.sh/master/freqVectorsEdit.sh > /tmp/freqVectorsEdit.sh && chmod +x freqVectorsEdit.sh && /tmp/freqVectorsEdit.sh && sudo rm -rf /tmp/freqVectorsEdit.sh && sudo rm -rf /tmp/Mac-*.bin`

## X86PlatformPlugin:

> 通常，我们可以通过勾选config的"PluginType"加载X86，来实现更完整的节能选项，勾选后：

``` bash
  ~ kextstat| grep -i x86
  142    1 0xffffff7f837f3000 0x17000    0x17000    com.apple.driver.X86PlatformPlugin (1.0.0) 75F8D5F2-9BB7-3709-987C-35B5C1FCB727 <117 64 22 13 11 7 6 5 4 3 1>
  146    1 0xffffff7f8380a000 0x7000     0x7000     com.apple.driver.X86PlatformShim (1.0.0) 78933162-E3FE-3568-B4E0-6A6BD9DEA64A <142 117 13 7 4 3>

```

## HiDPI

可以参考：[国光博客](http://sqlsec.com/2018/09/hidpi.html)

`➜ sh -c "$(curl -fsSL https://raw.githubusercontent.com/xzhih/one-key-hidpi/master/hidpi.sh)"`
