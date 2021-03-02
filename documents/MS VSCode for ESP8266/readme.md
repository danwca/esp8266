MSVScode, Microsoft Visual Studio Code  
ESP8266, Wifi MCU; MCU, Micro-control Unit  

## 基本说明
基于MSVSCode的ESP8266开发环境是ESP8266的多种开发环境之一；此开发环境是基于MSVSCode和其插件；MSVSCode开发环境，主要功能是：
1. 代码编辑
1. 代码编译
1. 生成ESP8266目标代码
1. 上传ESP8266目标代码

基于MSVSCode的ESP8266的开发环境，MSVSCode插件：
1. PlatformIO插件，
1. Audino插件，


## 其他说明
1. [MSVSCode扩展插件](extension.md)，建立命令与MS VSCode的各种元素之间的关系；命令是系统中的程序（或命令行）；MS VSCode通过脚本的形式执行类似make的各种编译操作；
1. 确定如何在MS VSCode中调用Cygwin中的命令；建立MS VSCode与Cygwin之间的共享文件夹；实现在MS VSCode中编辑ESP8266应用程序，在Cygwin中编译和连接ESP8266应用程序；
1. PlatformIO和Audino插件，虽然提供了ESP8266的支持，但也附加了很多额外的函数库，对于实现裸奔控制有很大的限制；
1. 从技术控制的角度，一定要实现裸奔控制；

