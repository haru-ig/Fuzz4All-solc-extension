pragma solidity ^0.8.0;
contract m106 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }

    MyStruct public s;
    MyStruct[] public ms;
    constructor() public {
        ms.push(s);
        ms[2].z = 3;
    }
}
