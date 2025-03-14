pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (MyStruct memory) {
        x.a -= 100;
        x.a -= 2;
        return x;
    }
}
```

___
## Resources
[Solidity 101](https:
