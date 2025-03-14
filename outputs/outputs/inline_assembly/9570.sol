pragma solidity ^0.8.0;
struct MyStruct {
    uint32 m1;
    uint32 m2;
}
contract Bar {
    mapping(uint => bool) a;
    uint x;
    constructor() {
        x = 11;
        a[12] = true;
    }
}

pragma solidity ^0.8.0;
struct MyStruct {
    uint m1;
}
contract Bar {
    uint x;
    MyStruct memory s;
    constructor() {
        x = 11;
        s.m2 = 12;
        a[12] = true;
    }
}
