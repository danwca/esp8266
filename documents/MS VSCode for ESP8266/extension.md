

## 关于MSVSCode插件
那么，这些插件到底做了什么？如何安装插件？插件的表现形式是什么样的？如何使用插件？
[MSVSCode](https://code.visualstudio.com/)

### [Extensions Capabilities Overview](https://code.visualstudio.com/api/extension-capabilities/overview)
1. Common Capabilities
1. Theming
1. Declarative Language Features;
1. Programmatic Language Features:vscode.languages.* API, about grammar;
1. Workbench Extensions
1. Debugging



没有说明，如何将编译和连接引入到插件中。很有可能是


### MSVSCode的插件的开发
[MS VSCode first extension](https://code.visualstudio.com/api/get-started/your-first-extension)  
[VS Code Extension Samples](https://github.com/microsoft/vscode-extension-samples)  
[Building a Visual Studio Code Extension](https://dev.to/azure/building-a-visual-studio-code-extension-dkj)  
[Extension Guidelines](https://code.visualstudio.com/api/references/extension-guidelines)  

应该通过TypsScript，JavaScript，Node.js开发MSVSCode扩展程序；

### 新增概念
1. [Contribution Points](https://code.visualstudio.com/api/references/contribution-points)，可以修改内容 


# 其他
1. 操作系统选择Windows(Windows, Mac OS X, Linux Ubuntu)；


## MSVSCode的学习

### MSVSCode提供的流程与扩展插件
MSVSCode应该提供多种流程控制，提供给扩展插件对MSVSCode进行控制：
1. 编辑环境控制流程，例如，按键，状态，选择，等
1. 编译流程，例如，工具（应用程序）的设置，
1. 调试接口，

不要让MSVSCode的扩展功能迷失了目标。就是过于迷恋MSVSCode的扩展功能，而失去了开发其集成环境的本质，失去了编写源程序代码的目标；

### MSVSCode插件的使用方法
[MSVSCode插件文件路径](210228093845.png), C:\Users\(username)\.vscode\extensions
[MSVSCode插件代码编写](210228114233.png)， TypeScript脚本语言，与js和Node.js相关
[MSVSCode插件的运行](210228114357.png)，
[MSVSCode插件运行结果](210228115645.png)
[MSVSCode插件的菜单](210228123834.png)


### MSVSCode Extension Development Host窗口 
参考[Building a Visual Studio Code Extension](https://dev.to/azure/building-a-visual-studio-code-extension-dkj)
安装[note.js](https://nodejs.org/en/)
[npm是note.js中的一个功能](210228131609.png)
所有[npm](210228130418.png)均在MSVSCode中的powershell中执行；
1. Building a Color Theme Extension
1. Open up the debugger view(keyboard shortcut CTRL/CMD + SHIFT + D), 

```
npm i -g generator-code
npm i -g yo
yo code
(issue yo.ps1数字签名, run set-ExecutionPolicy RemoteSigned)
(select New Color Theme)
(select No, Start fresh)
(type clarkio-blue)
(type clarkio-blue)
(type A blue theme made by clarkio)
(type clarkio blue)
(select dark)
(type y)
cd clarkio-blue
code .
(menu run\Start Debugging)
```

issue yo.ps1数字签名
原因：电脑禁止运行脚本
解决方法：执行
```
set-ExecutionPolicy RemoteSigned
```
[结果](210228134726.png)

note.js已经不再是js(javascript)的一个分支，而是与应用程序（例如，MSVSCode）关联，猜想，note.js是为应用程序提供js支持。

### 思路
1. MSVSCode提供了一个什么样的编程环境？MSVSCode对编程是如何理解的？



## 其他说明

### 从windows执行cygwin中的命令
```
c:\cygwin\bin\bash.exe -c 'for NUM in 1 2 3 4 5 6 7 8 9 10; do echo $NUM; done'
```
[运行结果](210228193509.png)
参考[How do you pass commands to a Cygwin console in Windows using Inno Setup](https://stackoverflow.com/questions/254340/how-do-you-pass-commands-to-a-cygwin-console-in-windows-using-inno-setup)

参考[Can you make Windows command prompt cmd+cygwin?](https://superuser.com/questions/1338950/can-you-make-windows-command-prompt-cmdcygwin)

