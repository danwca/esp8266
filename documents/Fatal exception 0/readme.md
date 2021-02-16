

## issue description
�ڱ���ɹ��󣬰�װ�̼������к󣬵õ�(210211145248.png);
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
z����user_init(user_main.c)�У����ӵ���������:
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

������ɵĴ���(no3/user/eagle.app.sym)��ȷ�ϵ�ַ0x40210bfc�е����ݣ�û�з��ֵ�ַ0x40210bfc

## solution
������ع��ߵ�����(210211223959.png)�������󣬳�����������(210211224228.png);

## others
1. ����һ��ͷʹ�����⣬�ڳ�������ǰ���ͳ��ֵĴ���