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
        i++;
        i += (10 + s.y);
        if (4!= 3) revert();
        if (z!= 8) revert();
    }
}
