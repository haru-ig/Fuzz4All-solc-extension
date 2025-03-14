pragma solidity ^0.8.0;
contract m209 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    uint public i;
    constructor() public {
        s = s;
        i++;
        s.y += 2;
        i += s.z;
        if (4!= 3) revert();
        s.z++;
        s.y += 10;
        s.x + 2;
        s.x = s.z + 2;
        s.z += s.w + 2;
        delete s.w;
        delete s.w;
        delete s.w;
        delete s.w;
    }
}
