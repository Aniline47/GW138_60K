# GW138_60K

**描述**：基于Tang Mega 138K / 60K 二次开发的一款FPGA开发板，在GW138_060A的基础上进行修改。

**参考**：GW138_060A：基于Tang Mega 138K / 60K 二次开发的一款FPGA开发板 [GW138_060A](https://bigpig.ongridea.com/h9wtn0)

## 引脚定义

<img src="PCB_design/SCH_GW138-60K_2-IO映射.png">

## 测试外设

+ [多路LED IO测试模块](https://bigpig.ongridea.com/kl43wg)
+ [正点/黑金/小梅哥转接板](https://bigpig.ongridea.com/wai-she-1-hei-jin) 
+ LTC2220_12Bit_170M_ADC 
+ AD9744_14Bit_210M_DAC

## 软件版本

+ GOWIN FPGA Designer Version V1.9.10.03

## 常见问题

1、为什么下载的代码不能直接烧录？

+ 因为综合生成的临时文件夹较为繁杂，没有同步到github，需要用户clone后自行编译生成下载文件
   
2、为什么综合报错？

+ 部分采用SV或复用IO口的工程会报错，请在Project->Configuration中Place&Route下Dual-Purpose IO找到报错的复用IO勾选上，或在Synthesize的General下选择SystemVerilog2017即可

## 感谢

+ [大猪蹄子的个人博客](https://bigpig.ongridea.com/)

## 扩展程序

+ [Gowin-138K-OC8051](https://github.com/Aniline47/GOWIN-138K-OC8051)
