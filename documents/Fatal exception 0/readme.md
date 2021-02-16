

## issue description
在编译成功后，安装固件，运行后，得到(210211145248.png);
```
tail 8
chksum 0xf7
load 0x3ffe8410, len 316, room 0 
tail 12
chksum 0x12
csum 0x12

Fatal exception (0): 
epc1=0x40210bfc, epc2=0x00000000, epc3=0x00000000, excvaddr=0x00000000, depc=0x00000000
```

## analyse
google : esp8266 issue Fatal exception 0
(Fatal exception 0 Issue #3138.pdf)
z函数user_init(user_main.c)中，增加调试输出语句:
```
void user_init(void)
{
	os_printf("processing user_init\r\n");
    os_printf("Check SDK version:%s\r\n", system_get_sdk_version());

	I2C_init();
	wos_init();	//  
	wos_run();	//	
	
	os_printf("ending user_init\r\n");
  
}

```

检查生成的代码(no3/user/eagle.app.sym)，确认地址0x40210bfc中的内容；没有发现地址0x40210bfc

## solution
检查下载工具的设置(210211223959.png)，修正后，程序正常运行(210211224228.png);

## others
1. 这是一个头痛的问题，在程序运行前，就出现的错误；