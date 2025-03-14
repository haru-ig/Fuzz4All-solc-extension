pragma solidity ^0.8.0;
contract m206 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    uint public i;
    constructor() public {
        s.x = 1;
        i++;
        i += 2 + 3 * 4 + 5 + 6 * 7 + 8 * 9;
        s.w = 8 * 9 + 10;
        s.y = 89;
        delete s.z;
    }
}
