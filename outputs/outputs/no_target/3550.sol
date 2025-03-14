pragma solidity ^0.8.0;
contract m2 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct memory a;
    struct __Storage {
        uint x : 1;
        uint y : 1;
        uint z : 1;
        uint w : 1;
    }
    __Storage memory s;
    MyStruct public s2;
    uint public i;
    constructor() public {
        a = a;
        s = s;
        i += 1;
        i++;
        i += a.x * 6 + 10 + a.x * a.x * 6 + 30;
        i += a.x * a.y * 4 + s.y * 2;
        delete s.x;
        s.y = 1080;
        uint z;
        z = s.y;
        s.y += 16;
        __Storage memory s;
        a.w = s.y;
        s.y *= a.y;
        i++;
        a.z = s.x + 16;
    }
}
