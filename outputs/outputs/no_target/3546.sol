pragma solidity ^0.8.0;
contract m207 {
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
        i += 2 + 3 * s.y;
        if (4!= 3) revert();
        s.w = s.y + 10;
        s.y = s.z + 16;
        delete s.z;
        uint z;
        z = s.z;
    }
}
