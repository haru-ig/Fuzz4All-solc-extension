pragma solidity ^0.8.0;
contract m208 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    constructor() public {
    }
    function f() public {
        s = s;
        s.y = uint(-1);
        i++;
        s.x = i;
        s.x = 1 | 0x1;
        s.y = uint(uint(uint42(uint28()) ^ 0) ^ 333);
        uint z;
        z = uint(s.y);
        s.w = s.y + s.y + 1;
        i++;
    }
}
