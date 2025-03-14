pragma solidity ^0.8.0;
contract m209 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
    }
    MyStruct public s;
    uint public i;
    constructor() public {
        s = s;
        s.z = s.y * 2;
        s.z ^= 10;
        s.y = 10;
        s.z *= s.x + 10;
        delete s.x;
        delete s.z;
        delete s.w;
        delete s.y;
    }
}
