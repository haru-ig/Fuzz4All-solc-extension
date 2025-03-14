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
        uint z;
        z = s.z;
        z = -s.z;
        z = s.z + 1;
    }
}
