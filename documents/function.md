# 功能码机制，function mechanism，

## 基本元素
1. EPRom, chip(AT24C64), read address 0x61, write address 0x60；用于保存功能码组态数据；
1. fn_init，功能码初始化清单，在功能码编号所表示的位置中保存相应功能码初始化函数，由函数wos_init根据组态数据进行调用，
1. fn_data，功能码数据缓存空间，保存每个功能码运行时刻数据，包括中间参数，功能块
1. fn_list，功能码指针清单，由于每个功能码结构的长度不一样，通过此清单
1. bn_list，功能块清单，内部功能块（参数接口）清单；指向fn_data中的功能块的指针清单；
```
// sample block structure
struct block_int
{
	void * ptr;	// point to somewhere in fn_data
	function * set;	// set(void* val, void* blk); *blk = *val;
	function * get; // get(void* val, void* blk); *val = *blk; 
}
```
1. wn_list，wifi功能块清单，无线通信功能块清单; 与功能块的结构一致，建立wifi与功能块之间的转换；

 
## 函数说明
1. _eprom_init(wos.c)，通过每个功能码的初始化函数（以函数指针形式保存在fn_init中）根据EPRom中的功能码组态数据初始化fn_data空间中功能码的运行时刻数据，fn_list，bn_list，wn_list;
1. （function_init）， 功能码初始化函数；对与功能码相关的功能块，功能码指针，wifi功能块进行注册；
1. （function_run），功能码运行函数，提取输入功能块的值，执行功能码的控制逻辑算法，修改输出功能块的值；
1.  fn_data，以功能码的运行时刻数据结构为单元，由相应功能码的初始化函数根据组态数据初始化，由功能码的运行函数和功能块（功能码的入口和出口参数）转换函数更新，并为功能块提供数据；
 

## 功能码说明
1. 功能码的定义通过几个部分完成：组态数据，运行数据，功能码数据空间，功能码指针清单；
1. 功能码初始化函数实现功能码数据缓存空间的初始化任务，同时建立数据指针的初始化；
1. 
 
<img src="function mechanism.jpg" />
