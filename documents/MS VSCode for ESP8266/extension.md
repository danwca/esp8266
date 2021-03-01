

## ����MSVSCode���
��ô����Щ�����������ʲô����ΰ�װ���������ı�����ʽ��ʲô���ģ����ʹ�ò����
[MSVSCode](https://code.visualstudio.com/)

### [Extensions Capabilities Overview](https://code.visualstudio.com/api/extension-capabilities/overview)
1. Common Capabilities
1. Theming
1. Declarative Language Features;
1. Programmatic Language Features:vscode.languages.* API, about grammar;
1. Workbench Extensions
1. Debugging



û��˵������ν�������������뵽����С����п�����


### MSVSCode�Ĳ���Ŀ���
[MS VSCode first extension](https://code.visualstudio.com/api/get-started/your-first-extension)  
[VS Code Extension Samples](https://github.com/microsoft/vscode-extension-samples)  
[Building a Visual Studio Code Extension](https://dev.to/azure/building-a-visual-studio-code-extension-dkj)  
[Extension Guidelines](https://code.visualstudio.com/api/references/extension-guidelines)  

Ӧ��ͨ��TypsScript��JavaScript��Node.js����MSVSCode��չ����

### ��������
1. [Contribution Points](https://code.visualstudio.com/api/references/contribution-points)�������޸����� 


# ����
1. ����ϵͳѡ��Windows(Windows, Mac OS X, Linux Ubuntu)��


## MSVSCode��ѧϰ

### MSVSCode�ṩ����������չ���
MSVSCodeӦ���ṩ�������̿��ƣ��ṩ����չ�����MSVSCode���п��ƣ�
1. �༭�����������̣����磬������״̬��ѡ�񣬵�
1. �������̣����磬���ߣ�Ӧ�ó��򣩵����ã�
1. ���Խӿڣ�

��Ҫ��MSVSCode����չ������ʧ��Ŀ�ꡣ���ǹ�������MSVSCode����չ���ܣ���ʧȥ�˿����伯�ɻ����ı��ʣ�ʧȥ�˱�дԴ��������Ŀ�ꣻ

### MSVSCode�����ʹ�÷���
[MSVSCode����ļ�·��](210228093845.png), C:\Users\(username)\.vscode\extensions
[MSVSCode��������д](210228114233.png)�� TypeScript�ű����ԣ���js��Node.js���
[MSVSCode���������](210228114357.png)��
[MSVSCode������н��](210228115645.png)
[MSVSCode����Ĳ˵�](210228123834.png)


### MSVSCode Extension Development Host���� 
�ο�[Building a Visual Studio Code Extension](https://dev.to/azure/building-a-visual-studio-code-extension-dkj)
��װ[note.js](https://nodejs.org/en/)
[npm��note.js�е�һ������](210228131609.png)
����[npm](210228130418.png)����MSVSCode�е�powershell��ִ�У�
1. Building a Color Theme Extension
1. Open up the debugger view(keyboard shortcut CTRL/CMD + SHIFT + D), 

```
npm i -g generator-code
npm i -g yo
yo code
(issue yo.ps1����ǩ��, run set-ExecutionPolicy RemoteSigned)
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

issue yo.ps1����ǩ��
ԭ�򣺵��Խ�ֹ���нű�
���������ִ��
```
set-ExecutionPolicy RemoteSigned
```
[���](210228134726.png)

note.js�Ѿ�������js(javascript)��һ����֧��������Ӧ�ó������磬MSVSCode�����������룬note.js��ΪӦ�ó����ṩjs֧�֡�

### ˼·
1. MSVSCode�ṩ��һ��ʲô���ı�̻�����MSVSCode�Ա����������ģ�



## ����˵��

### ��windowsִ��cygwin�е�����
```
c:\cygwin\bin\bash.exe -c 'for NUM in 1 2 3 4 5 6 7 8 9 10; do echo $NUM; done'
```
[���н��](210228193509.png)
�ο�[How do you pass commands to a Cygwin console in Windows using Inno Setup](https://stackoverflow.com/questions/254340/how-do-you-pass-commands-to-a-cygwin-console-in-windows-using-inno-setup)

�ο�[Can you make Windows command prompt cmd+cygwin?](https://superuser.com/questions/1338950/can-you-make-windows-command-prompt-cmdcygwin)

