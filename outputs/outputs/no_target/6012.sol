pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    modifier mutator(MyStruct memory x) internal{
        x.a -= 1;
        x.a -= 10;
        x.a -= 100;
    }
}

```
