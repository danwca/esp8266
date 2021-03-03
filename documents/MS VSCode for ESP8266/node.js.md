## Node.js
嵌入式JavaScript框架，就是将JaveScript嵌入到其他应用程序中，使得应用程序具有执行外部JavaScript功能。(1)

## 参考
[Node.js嵌入式开发之 一 交叉编译](https://www.jianshu.com/p/ad70be51fb51)
[How To Build Android Apps With Node JS Using Android JS](https://blog.usejournal.com/how-to-build-android-apps-with-node-js-using-android-js-2aa4643be87b)

## 相关概念
### [npm](https://docs.npmjs.com/about-npm)
npm，类似github的网站(2)。对于不公开的项目是收费的。
npm is the world's largest software registry. Open source developers from every continent use npm to share and borrow packages, and many organizations use npm to manage private development as well.  
[Downloading and installing Node.js and npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)  

For more information on installing Node.js on a variety of operating systems, see [this page](https://nodejs.org/en/download/package-manager/)

## 其他说明  
### (1)嵌入式JavaScript概念
目前还只是猜测，还没有得到证实。如果是这样，那么意味着，应用程序支持外部脚本控制应用程序，通常是通过事件，对象等概念。猜测其方法是：
1. 将node.js提供的函数库编译到应用程序中，在应用程序的源代码中驱动javascript代码；
1. 应用程序需要定义javascript的代码结构，文件夹，脚本文件名，脚本所需要提供的代码（代码段，函数，类等）

MS VSCode也应该使用了node.js对其功能进行扩展，其扩展程序的文件夹结构是由VSCode定义的，并由VSCode进行驱动。

### (2)npm
源程序协作网站；支持嵌入式javascript脚本node.js；通过javascript脚本实现源程序处理流程；

### 源程序处理流程
实际上，源程序的处理流程很简单：编译和连接；那么，为什么需要那么复杂的处理呢？问题就出现在这两个过程的参数设置上。  

为实现标准的处理流程，需要为标准操作提供正确的参数；通过不同的参数设置可以为同一源程序可以生成不同的目标文件；其实，源程序文件夹也可以看成是参数，不同的参数生成不同的目标文件；参数的设置，也可以通过流程实现；


### make
可以认为是一种脚本语言；可以用于完成源程序处理流程的脚本语言（当然，也可以作为其他用途）；

在某种程度上，make，npm，node.js都完成的同一任务，完成源程序的处理流程。

