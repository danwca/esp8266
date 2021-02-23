## 编译和连接概念
sofeware development compile & link conception

编译器（Compile）将源程序文件转换（编译）为二进制文件；函数库（Libray）文件也是以二进制文件的形式存在；连接器（link）将所有相关二进制文件（源程序生成的二进制文件，库函数的二进制文件）合成一个目标文件（也是一种二进制文件）；

源程序文件由文本编辑器编写而成；目标代码文件在目标系统中由目标系统这个的操作系统运行；

批处理器（make），每一次从修改源程序文件到生成目标文件，都需要执行编译，连接，以及其他辅助处理操作；批处理器根据批处理脚本实现对这个处理过程的批处理。

## ESP8266 目标文件的生成


采用传统的程序编译器和连接器的概念生成目标代码文件；目标代码文件通过串行通信（串行信号线，专用设备，串行应用程序）用于传送到ESP8266中运行；源程序文件采用C语言（或C++）；ESP8266提供专用函数库；Cygwin编译环境提供通用函数库；

用于ESP8266程序编写的相关应用程序：
1. 文本编辑器，可以是任何支持常规文本文件编辑的应用程序。Windows操作系统中最简单的notepad，推荐使用notpad++;
1. 编译器，ESP8266开发商通过cygwin（一种可以运行在windows下的操作系统）提供。
1. 连接器，ESP8266开发商通过cygwin（一种可以运行在windows下的操作系统）提供。
1. 下载工具，ESP8266 Download Tool
1. 串行口工具，Serial Port Tool
1. 批处理脚本，makefile

ESP8266的处理过程（相关应用程序均在cygwin中）：
1. CC，编译器,
1. AR，
1. LD，连接器
1. objcopy，从o文件中提取相应的内存段单独存储，形成文件（）
1. gen_appbin.py, python脚本，重新生成内存段描述文件（app.flash.bin）
1. mv，移动文件, 基于cygwin的命令，
1. cp，拷贝文件, 基于cygwin的命令，

ESP8266最终目标文件
1. 0x00000 eagle.flash.bin
1. 0x10000 eagle.irom0text.bin，由ojbcopy从
1. 0xFC000 esp_init_data_default.bin，由ESP8266公司提供，
1. 0xFE000 blank.bin，由ESP8266公司提供，


