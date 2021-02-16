
## include file locations
```
#include "filename.h" will look in the sketch folder first and next in the library directories
#include <filename.h> will only look in the library directories
```
The use of angle brackets (<>) causes the compiler to look for the file on the default path for the library directory. Depending upon installation, this path is the Documents/Arduino/libraries directory on a Windows machine.

The use of double quotes ("") around the header file causes the compiler to look in the sketch working directory for the header file. The default sketch directory can be seen in the File --> Preferences menu option. If the file is not found there, it will also search the default library directory.

## declare an array of variable size (Globally)
```
#define ARRAY_SIZE 10
//...
int myArray[ARRAY_SIZE];
```

```
int myArray[] = {1, 2, 3, 4, 5};
const int ARRAY_SIZE = sizeof(myArray) / sizeof(int);
```

## the difference between ++i and i++
```
int a = 10;
int b = a++;
```
In that case, <span style="color:orange;">a</span> becomes 11 and <span style="color:orange;">b</span> is set to 10. That's post-increment - you increment after use.

If you change that line above to:
```
int b = ++a;
```

then <span style="color:orange;">a</span> still becomes 11 but so does <span style="color:orange;">b</span>. That's because it's pre-increment - you increment before use.

Note that it's not quite the same thing for C++ classes, there are efficiencies that can be had by preferring one over the other. But since you're talking about integers, C++ acts the same as C.


