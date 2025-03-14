pragma solidity ^0.8.0;
struct ExampleStruct10 {
    uint c;
}
contract ExampleStruct11 {
    ExampleStruct10 x;
    constructor(ExampleStruct10 memory x_) { x = x_; }
}

pragma solidity ^0.8.0;
contract ExampleStruct12 {
    ExampleStruct12 x;
    ExampleStruct11 y;
    ExampleStruct9 z;
    constructor(ExampleStruct11 memory y_, ExampleStruct9 memory z_) { y = y_; z = z_; }
}

contract ExampleStruct13 {
    ExampleStruct13 x;
    address y;
    ExampleStruct12 z;
    uint[1] w;
    uint[1] x;
    uint[1] w1;
    uint z;
    address z1;
    uint z2;
    uint z3;
    uint z4;
    constructor(address y_) { w = [97]: 1 },
    (uint z_) private { z = z_; },
    (uint z_) { z += z_; },
    (uint z_) { z -= z_; },
    (uint z_) { z *= z_; },
    contract ExampleStruct13 {
        constructor(address y_) { w1 = [97]: 1 }
        (uint z_) private { z += z_; },
        (uint z_) { z -= z_; },
        (uint z_) { z *= z_; },

        (uint z_) private { z += z_; },
        (uint z_) { z -= z_; },
        (uint z_) { z *= z_; },
    ) public { z1 = y_; z2 = 6; z3 = { } z4 = ExampleStruct9(true); }
```
